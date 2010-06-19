------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with League.Strings.Internals;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode;
with Matreshka.SAX.Simple_Readers.Scanner.Tables;

package body Matreshka.SAX.Simple_Readers.Scanner is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.SAX.Simple_Readers.Scanner.Tables;

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer);
   pragma Inline (Enter_Start_Condition);
   --  Enter a start condition.

   procedure Set_Continue_State
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer);
   pragma Inline (Set_Continue_State);
   --  Set scanner's state to be used after completion of recognition of
   --  current template sequence.

   function Get_Continue_State
    (Self : not null access SAX_Simple_Reader'Class) return Integer;
   pragma Inline (Set_Continue_State);
   --  Get scanner's state to be used after completion of recognition of
   --  current template sequence.

   procedure Reset_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class);
   --  Resets "whitespace matched" flag.

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class);
   --  Sets "whitespace matched" flag.

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Returns value of "whitespace matched" flag.

   procedure Process_Parameter_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class;
     Name : League.Strings.Universal_String);
   --  Process parameter entity reference in entiry value (rule [69] in context
   --  of rule [9]).

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer) is
   begin
      Self.Scanner_State.YY_Start_State := 1 + 2 * State;
   end Enter_Start_Condition;

   ------------------------
   -- Get_Continue_State --
   ------------------------

   function Get_Continue_State
    (Self : not null access SAX_Simple_Reader'Class) return Integer is
   begin
      return Self.Scanner_State.Continue_State;
   end Get_Continue_State;

   ----------------------------
   -- Get_Whitespace_Matched --
   ----------------------------

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean is
   begin
      return Self.Whitespace_Matched;
   end Get_Whitespace_Matched;

   --------------------------------------------------------
   -- Process_Parameter_Entity_Reference_In_Entity_Value --
   --------------------------------------------------------

   procedure Process_Parameter_Entity_Reference_In_Entity_Value
    (Self  : not null access SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String)
   is
      use Universal_String_Maps;

      Position : constant Universal_String_Maps.Cursor
        := Self.Parameter_Entities.Find (Name);

   begin
      if not Has_Element (Position) then
         raise Program_Error with "parameter entity is not declared";

      else
--         Set_Continue_State (Self, State);
         Push_Parameter_Entity
          (Self, League.Strings.Internals.Get_Shared (Element (Position)));
      end if;
   end Process_Parameter_Entity_Reference_In_Entity_Value;

   ---------------------------
   -- Push_Parameter_Entity --
   ---------------------------

   procedure Push_Parameter_Entity
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State := (Data, others => <>);
      Enter_Start_Condition (Self, ENTITY_VALUE_PARAMETER_ENTITY);
   end Push_Parameter_Entity;

   ------------------------------
   -- Reset_Whitespace_Matched --
   ------------------------------

   procedure Reset_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := False;
   end Reset_Whitespace_Matched;

   ------------------------
   -- Set_Continue_State --
   ------------------------

   procedure Set_Continue_State
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer) is
   begin
      Self.Scanner_State.Continue_State := State;
   end Set_Continue_State;

   ----------------------------
   -- Set_Whitespace_Matched --
   ----------------------------

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := True;
   end Set_Whitespace_Matched;

   -----------
   -- YYLex --
   -----------

   function YYLex
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      YY_Action                  : Integer;
      YY_Base_Position           : Utf16_String_Index;
      YY_Base_Index              : Positive;
      YY_C                       : Integer;
      YY_Current_State           : Integer;
      YY_Current_Code            : Code_Point;
      YY_Last_Accepting_Position : Utf16_String_Index;
      YY_Last_Accepting_Index    : Positive;
      YY_Last_Accepting_State    : Integer;
      YY_Next_Position           : Utf16_String_Index;
      YY_Last_Match_Position     : Utf16_String_Index;
      YY_Last_Match_Index        : Positive;
      YY_Last_Match_State        : Integer;
      YYLVal                     : YYSType renames Self.YYLVal;

      function YY_Text
       (Trim_Left  : Natural := 0;
        Trim_Right : Natural := 0)
          return League.Strings.Universal_String;

      -------------
      -- YY_Text --
      -------------

      function YY_Text
       (Trim_Left  : Natural := 0;
        Trim_Right : Natural := 0)
          return League.Strings.Universal_String
      is
         FP : Utf16_String_Index := YY_Base_Position;
         FI : constant Positive  := YY_Base_Index + Trim_Left;
         LP : Utf16_String_Index := Self.Scanner_State.YY_Current_Position;
         LI : constant Positive
           := Self.Scanner_State.YY_Current_Index - Trim_Right;

      begin
	 --  XXX Implementation covers all cases but not efficient, most times
	 --  (or always?) use of iteration is not needed - leading and trailing
         --  code points belong to BMP.

         for J in 1 .. Trim_Left loop
            Unchecked_Next (Self.Scanner_State.Data.Value, FP);
         end loop;

         for J in 1 .. Trim_Right loop
            Unchecked_Previous (Self.Scanner_State.Data.Value, LP);
         end loop;

         return
           League.Strings.Internals.Create
            (Matreshka.Internals.Strings.Operations.Slice
              (Self.Scanner_State.Data, FP, LP - FP, LI - FI));
      end YY_Text;

--         --  copy whatever the last rule matched to the standard output
--
--         procedure ECHO is
--         begin
--            if Ada.Wide_Wide_Text_IO.Is_Open (User_Output_File) then
--               Ada.Wide_Wide_Text_IO.Put (User_Output_File, YYText);
--
--            else
--               Ada.Wide_Wide_Text_IO.Put (YYText);
--            end if;
--         end ECHO;
--
--         --  action number for EOF rule of a given start state
--function YY_STATE_EOF(state : Integer) return Integer is
--begin
--     return YY_END_OF_BUFFER + state + 1;
--end YY_STATE_EOF;
--pragma Inline (YY_STATE_EOF);
--
---- return all but the first 'n' matched characters back to the input stream
--procedure yyless(n : Integer) is
--begin
--        yy_cp := yy_bp + n;
--        yy_c_buf_p := yy_cp;
--        YY_DO_BEFORE_ACTION; -- set up yytext again
--end yyless;
--pragma Inline (yyless);
--
--         --  yy_get_previous_state - get the state just before the EOB char
--         --  was reached
--
--         function YY_Get_Previous_State return YY_State_Type is
--            YY_Current_State : YY_State_Type;
--            YY_C             : Short;
--            Index            : Integer;
--            Code             : Wide_Wide_Character;
--begin
--   yy_current_state := yy_start;
--
--   declare
--      yy_cp : integer := yytext_ptr;
--
--   begin
--      while yy_cp < yy_c_buf_p loop
--         Index := yy_cp;
--
--         Next (yy_ch_buf, Index, Code);
--         yy_c := yy_ec(Code);
--         if (yy_accept(yy_current_state) /= 0 ) then
--            yy_last_accepting_state := yy_current_state;
--            yy_last_accepting_cpos := yy_cp;
--         end if;
--         while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
--            yy_current_state := yy_def(yy_current_state);
--            if yy_current_state >= YY_FIRST_TEMPLATE then
--               yy_c := yy_meta(yy_c);
--            end if;
--         end loop;
--         yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
--            yy_cp := Index;
--      end loop;
--   end;
--
--   return yy_current_state;
--end yy_get_previous_state;
--
--         Index : Integer;
--         Code  : Wide_Wide_Character;
--
   begin
<<new_file>>
--         --  This is where we enter upon encountering an end-of-file and
--         --  yywrap() indicating that we should continue processing
--
--    if ( yy_init ) then
--        if ( yy_start = 0 ) then
--            yy_start := 1;      -- first start state
--        end if;
--
--        -- we put in the '\n' and start reading from [1] so that an
--        -- initial match-at-newline will be true.
--
--        yy_ch_buf.data (0) := Ada.Characters.Wide_Wide_Latin_1.LF;
--        yy_n_chars := 1;
--
--        -- we always need two end-of-buffer characters.  The first causes
--        -- a transition to the end-of-buffer state.  The second causes
--        -- a jam in that state.
--
--        yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;
--        yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;
--
--        yy_eof_has_been_seen := false;
--
--        yytext_ptr := 1;
--        yy_c_buf_p := yytext_ptr;
--        yy_init := false;
--    end if; -- yy_init

      loop  --  Loops until end-of-data is reached.
--      yy_bp := yy_cp;
         YY_Base_Position := Self.Scanner_State.YY_Current_Position;
         YY_Base_Index    := Self.Scanner_State.YY_Current_Index;
--      yy_current_state := yy_start;
         YY_Current_State := Self.Scanner_State.YY_Start_State;
--
--        yy_cp := yy_c_buf_p;
--
--        -- yy_bp points to the position in yy_ch_buf of the start of the
--        -- current run.
         loop
            YY_Next_Position := Self.Scanner_State.YY_Current_Position;
            Unchecked_Next
             (Self.Scanner_State.Data.Value,
              YY_Next_Position,
              YY_Current_Code);
            YY_C :=
              YY_EC_Base
               (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);

            --  My section BEGIN

            if YY_Current_Code = 0 then
               --  XXX Current code is "end of buffer" mark. It is need to be
               --  reviewed and carefully implented without assumption that
               --  last character has zero code. But in general it is a case,
               --  character with zero code is prohibited and used as implicit
               --  terminator in the internal string representation.

               YY_Last_Match_Position := YY_Last_Accepting_Position;
               YY_Last_Match_Index    := YY_Last_Accepting_Index;
               YY_Last_Match_State    := YY_Last_Accepting_State;
--
--               if YY_Last_Match_Position /= YY_Last_Accepting_Position then
--                  raise Program_Error with "still have data atfer";
--               end if;
            end if;

            --  My section END

            if YY_Accept (YY_Current_State) /= 0 then
               --  Accepting state reached, save for possible backtrack.

               YY_Last_Accepting_State    := YY_Current_State;
               YY_Last_Accepting_Position :=
                 Self.Scanner_State.YY_Current_Position;
               YY_Last_Accepting_Index    :=
                 Self.Scanner_State.YY_Current_Index;
            end if;

            while YY_Chk (YY_Base (YY_Current_State) + YY_C)
                    /= YY_Current_State
            loop
               YY_Current_State := YY_Def (YY_Current_State);

               if YY_Current_State >= YY_First_Template then
                  YY_C := YY_Meta (YY_C);
               end if;
            end loop;

            YY_Current_State := YY_Nxt (YY_Base (YY_Current_State) + YY_C);
            Self.Scanner_State.YY_Current_Position := YY_Next_Position;
            Self.Scanner_State.YY_Current_Index :=
              Self.Scanner_State.YY_Current_Index + 1;

            exit when YY_Current_State = YY_Jam_State;
         end loop;

         --  Return back to last accepting state.

         Self.Scanner_State.YY_Current_Position := YY_Last_Accepting_Position;
         Self.Scanner_State.YY_Current_Index    := YY_Last_Accepting_Index;
         YY_Current_State                       := YY_Last_Accepting_State;

   <<Next_Action>>
         YY_Action := YY_Accept (YY_Current_State);
--            YY_DO_BEFORE_ACTION;
--            YY_USER_ACTION;
--
--<<do_action>>   -- this label is used only to access EOF actions
         case YY_Action is
            when 0 =>  --  must backtrack
               raise Program_Error with "Backtrack is not implemented";
--               yy_cp := yy_last_accepting_cpos;
--               yy_current_state := yy_last_accepting_state;

--               goto next_action;


            when 1 =>
               Enter_Start_Condition (Self, XML_DECL);
            
               return Token_XML_Decl_Open;

            when 2 =>
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_PI_Close;

            when 3 =>
               --  All white spaces from rules [23], [24], [25], [32], [80] are ignored.
            
               null;

            when 4 =>
               --  Open tag of document type declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_DECL);
            
               return Token_Doctype_Decl_Open;

            when 5 =>
               --  Name of root element type, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_EXTINT);
               YYLVal := (String => YY_Text);
               Put_Line (YYLVal.String);
            
               return Token_Name;

            when 6 =>
               --  Close tag of document type declaration, rule [28].
            
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_Close;

            when 7 =>
               --  Keyword SYSTEM, rule [75].
            
               Set_Continue_State (Self, DOCTYPE_INT);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
            
               return Token_System;

            when 8 =>
               --  System literal, rule [11], used in rule [75].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before system literal";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, Get_Continue_State (Self));
               YYLVal := (String => YY_Text (1, 1));
               Put_Line (YYLVal.String);
            
               return Token_System_Literal;

            when 9 =>
               --  Keyword PUBLIC, rule [75].
            
               Set_Continue_State (Self, DOCTYPE_INT);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_PUB);
            
               return Token_Public;

            when 10 =>
               --  Public id literal, rule [12], used in rule [75].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before pubid literal";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
               YYLVal := (String => YY_Text (1, 1));
               Put_Line (YYLVal.String);
            
               return Token_Public_Literal;

            when 11 =>
               --  Open of internal subset declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);
            
               return Token_Internal_Subset_Open;

            when 12 =>
               --  Close of internal subset declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_INT);
            
               return Token_Internal_Subset_Close;

            when 13 =>
               --  Open of entity declaration, rules [71], [72].
            
               Enter_Start_Condition (Self, ENTITY_DECL);
               Reset_Whitespace_Matched (Self);
            
               return Token_Entity_Decl_Open;

            when 14 =>
               --  Name in entity declaration, rules [71], [72].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error
                    with "no whitespace before name in entity declaration";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, ENTITY_DEF);
               YYLVal := (String => YY_Text);
               Put_Line (YYLVal.String);
            
               return Token_Name;

            when 15 =>
               --  Percent mark in parameter entity declaration, rule [72].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error
                    with "no whitespace before percent in parameter entity declaration";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
            
               return Token_Percent;

            when 16 =>
               --  Close token of entity declaration, rules [71], [72].
            
               Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);
            
               return Token_Close;

            when 17 =>
               --  Entity value, rule [9].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before entity value";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, ENTITY_VALUE_QUOTATION);
            
               return Token_Entity_Value_Open;

            when 18 =>
               --  Entity value, rule [9].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before entity value";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, ENTITY_VALUE_APOSTROPHE);
            
               return Token_Entity_Value_Open;

            when 19 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
            
               Set_Continue_State (Self, ENTITY_DEF);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
            
               return Token_System;

            when 20 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
            
               Set_Continue_State (Self, ENTITY_DEF);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_PUB);
            
               return Token_Public;

            when 21 =>
               --  NDATA keyword, rule [76].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before NDATA";
                  --  XXX This is recoverable error.
               end if;
            
               Enter_Start_Condition (Self, ENTITY_NDATA);
            
               return Token_NData;

            when 22 =>
               --  Name of NDATA, rule [76].
            
               Enter_Start_Condition (Self, ENTITY_DEF);
               YYLVal := (String => YY_Text);
               Put_Line (YYLVal.String);
            
               return Token_Name;

            when 23 =>
               YYLVal := (String => YY_Text);
               Put_Line (YYLVal.String);
            
               return Token_String_Segment;

            when 24 =>
               --  Close of entity value, rule [9].
            
               Enter_Start_Condition (Self, ENTITY_DEF);
            
               return Token_Entity_Value_Close;

            when 25 =>
               YYLVal := (String => YY_Text);
               Put_Line (YYLVal.String);
            
               return Token_String_Segment;

            when 26 =>
               --  Close of entity value, rule [9].
            
               Enter_Start_Condition (Self, ENTITY_DEF);
            
               return Token_Entity_Value_Close;

            when 27 =>
               --  In parameter entity substitution mode nor quotation nor apostrophe
               --  characters is recognized.
            
               YYLVal := (String => YY_Text);
               Put_Line (YYLVal.String);
            
               return Token_String_Segment;

            when 28 =>
               --  Parameter entity reference rule [69] in entity value rule [9].
               --
               --  Processing of parameter entity uses separate scanner's state, thus
               --  after processing current state is restored automatically. This allows
               --  to reuse code for three modes: parsing of entity value delimited by
               --  quotation; parsing of entity value delimited by apostrophe; and
               --  parsing of parameter entity replacement text when it is referenced
               --  in any of two form of entity value.
            
               Process_Parameter_Entity_Reference_In_Entity_Value (Self, YY_Text (1, 1));

            when 29 =>
               --  All white spaces from rules [28] are ignored.
               --  Whitespace before name in rule [76] is ignored.
            
               null;

            when 30 =>
               --  White spaces in entity declaration are not optional, rules [71], [72],
               --  [75].
            
               Set_Whitespace_Matched (Self);

            when 31 =>
               raise Program_Error with "Unexpected character in XML_DECL";

            when 32 =>
               raise Program_Error with "Unexpected character in DOCTYPE_DECL";

            when 33 =>
               raise Program_Error with "Unexpected character in DOCTYPE_EXTINT";

            when 34 =>
               raise Program_Error with "Unexpected character in DOCTYPE_INT";

            when 35 =>
               raise Program_Error with "Unexpected character in DOCTYPE_INTSUBSET";

            when 36 =>
               raise Program_Error with "Unexpected character in ENTITY_DECL";

            when 37 =>
               raise Program_Error with "Unexpected character in ENTITY_DEF";

            when 38 =>
               raise Program_Error with "Unexpected character in ENTITY_NDATA";

            when 39 =>
               raise Program_Error with "Unexpected character in pubid literal";

            when 40 =>
               raise Program_Error with "Unexpected character in system literal";

            when 41 =>
               raise Program_Error with "Unexpected character in document";
--            when YY_END_OF_BUFFER + INITIAL + 1 
--            =>
--               return End_Of_Input;
--
            when YY_End_Of_Buffer =>
               if Self.Scanner_State.Last_Match then
                  Self.Scanner_State.YY_Current_Position :=
                    YY_Last_Match_Position;
                  Self.Scanner_State.YY_Current_Index := YY_Last_Match_Index;
                  YY_Current_State := YY_Last_Match_State;
                  Self.Scanner_State.Last_Match := False;

                  --  XXX Need to be double checked for the scenario when
                  --  last accepted state is not at the last buffer's
                  --  position.

                  goto Next_Action;
--                     yy_c_buf_p := yy_n_chars;
--                     yy_current_state := yy_get_previous_state;
--
--                     yy_cp := yy_c_buf_p;
--                     yy_bp := yytext_ptr;
--
--                     goto next_action;

               else
                  if Self.Scanner_Stack.Is_Empty then
                     raise Program_Error with "End of data";

                  else
                     Self.Scanner_State := Self.Scanner_Stack.Last_Element;
                     Self.Scanner_Stack.Delete_Last;

                     goto New_File;
                  end if;
               end if;
--            when YY_END_OF_BUFFER =>
--               yytext_ptr := yy_bp;
--
--               case yy_get_next_buffer is
--                  when EOB_ACT_END_OF_FILE =>
--                     begin
--                        if yywrap then
--                           --  note: because we've taken care in
--                           --  yy_get_next_buffer() to have set up yytext,
--                           --  we can now set up yy_c_buf_p so that if some
--                           --  total hoser (like aflex itself) wants
--                           --  to call the scanner after we return the
--                           --  End_Of_Input, it'll still work - another
--                           --  End_Of_Input will get returned.
--
--                           yy_c_buf_p := yytext_ptr;
--                           yy_act := YY_STATE_EOF ((yy_start - 1) / 2);
--
--                           goto do_action;
--
--                        else
--                           --  start processing a new file
--
--                           yy_init := true;
--
--                           goto new_file;
--                        end if;
--                     end;
--
--                  when EOB_ACT_RESTART_SCAN =>
--                     yy_c_buf_p := yytext_ptr;
--
--                  when EOB_ACT_LAST_MATCH =>
--                     yy_c_buf_p := yy_n_chars;
--                     yy_current_state := yy_get_previous_state;
--
--                     yy_cp := yy_c_buf_p;
--                     yy_bp := yytext_ptr;
--
--                     goto next_action;
--               end case; -- case yy_get_next_buffer()

            when others =>
               raise Program_Error
                 with "Unhandled action"
                        & Integer'Image (YY_Action) & " in scanner";
         end case;
      end loop;  --  end of loop waiting for end of file
   end YYLex;

end Matreshka.SAX.Simple_Readers.Scanner;
