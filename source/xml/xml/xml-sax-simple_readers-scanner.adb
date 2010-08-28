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
with Ada.Unchecked_Deallocation;

with League.Strings.Internals;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode.Characters.Latin;
with XML.SAX.Simple_Readers.Callbacks;
with XML.SAX.Simple_Readers.Scanner.Actions;
with XML.SAX.Simple_Readers.Scanner.Tables;

package body XML.SAX.Simple_Readers.Scanner is

   use type Interfaces.Unsigned_32;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Entity_Tables;
   use Matreshka.Internals.XML.Symbol_Tables;
   use XML.SAX.Simple_Readers.Scanner.Tables;

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class);
   --  Sets "whitespace matched" flag.

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Returns value of "whitespace matched" flag.

   procedure Free is
     new Ada.Unchecked_Deallocation
          (XML.SAX.Input_Sources.SAX_Input_Source'Class,
           XML.SAX.Input_Sources.SAX_Input_Source_Access);

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out SAX_Simple_Reader'Class) is
   begin
      while not Self.Scanner_Stack.Is_Empty loop
         Free (Self.Scanner_State.Source);
         Self.Scanner_State := Self.Scanner_Stack.Last_Element;
         Self.Scanner_Stack.Delete_Last;
      end loop;

      --  Release shared string when scanner's stack is empty, because it is
      --  buffer for document entity.

      Matreshka.Internals.Strings.Dereference (Self.Scanner_State.Data);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out SAX_Simple_Reader'Class) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (Tables.DOCUMENT_10);
   end Initialize;

   ----------------------
   -- YY_Move_Backward --
   ----------------------

   procedure YY_Move_Backward
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Scanner_State.YY_Current_Position :=
        Self.Scanner_State.YY_Current_Position - 1;
      Self.Scanner_State.YY_Current_Index    :=
        Self.Scanner_State.YY_Current_Index - 1;
      Self.Scanner_State.YY_Current_Column   :=
        Self.Scanner_State.YY_Current_Column - 1;
   end YY_Move_Backward;

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.YY_Start_State := State * 2 + 1;
   end Enter_Start_Condition;

   ----------------------------
   -- Get_Whitespace_Matched --
   ----------------------------

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean is
   begin
      return Self.Whitespace_Matched;
   end Get_Whitespace_Matched;

   -------------------------
   -- Pop_Start_Condition --
   -------------------------

   procedure Pop_Start_Condition
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Enter_Start_Condition
       (Self, Self.Scanner_State.Start_Condition_Stack.Last_Element);
      Self.Scanner_State.Start_Condition_Stack.Delete_Last;
   end Pop_Start_Condition;

   -----------------
   -- Push_Entity --
   -----------------

   function Push_Entity
    (Self             : not null access SAX_Simple_Reader'Class;
     Entity           : Matreshka.Internals.XML.Entity_Identifier;
     In_Document_Type : Boolean;
     In_Literal       : Boolean) return Boolean
   is
      Source     : XML.SAX.Input_Sources.SAX_Input_Source_Access;
      Text       : Matreshka.Internals.Strings.Shared_String_Access;
      Last_Match : Boolean;
      Condition  : constant Interfaces.Unsigned_32 := Start_Condition (Self);

   begin
      --  Resolve entity when necessary.

      if not Is_Resolved (Self.Entities, Entity) then
         Callbacks.Call_Resolve_Entity
          (Self.all,
           League.Strings.Internals.Create
            (Public_Id (Self.Entities, Entity)),
           League.Strings.Internals.Create
            (System_Id (Self.Entities, Entity)),
           Source);
         Text       := Matreshka.Internals.Strings.Shared_Empty'Access;
         Last_Match := False;

         if not Self.Continue then
            Callbacks.Call_Fatal_Error
             (Self.all,
              League.Strings.To_Universal_String
               ("external entity is not resolved"));

            return False;
         end if;

         Set_Is_Resolved (Self.Entities, Entity, True);

         case Self.Version is
            when XML_1_0 =>
               Source.Set_Version (League.Strings.To_Universal_String ("1.0"));

            when XML_1_1 =>
               Source.Set_Version (League.Strings.To_Universal_String ("1.1"));
         end case;

      else
         Source     := null;
         Text       := Replacement_Text (Self.Entities, Entity);
         Last_Match := True;

         if Text.Unused = 0 then
            --  Replacement text is empty string,

            --  [XML 4.4.8] Included as PE
            --
            --  "Just as with external parsed entities, parameter entities need
            --  only be included if validating. When a parameter-entity
            --  reference is recognized in the DTD and included, its
            --  replacement text MUST be enlarged by the attachment of one
            --  leading and one following space (#x20) character; the intent is
            --  to constrain the replacement text of parameter entities to
            --  contain an integral number of grammatical tokens in the DTD.
            --  This behavior MUST NOT apply to parameter entity references
            --  within entity values; these are described in 4.4.5 Included in
            --  Literal."
            --
            --  Set Whitespace_Matched flag, it is used only while processing
            --  of DTD, so the place where parameter entity declarations are
            --  allowed.

            Self.Whitespace_Matched := True;

            return True;
         end if;
      end if;

      --  [XML 4.4.8] Included as PE
      --
      --  "Just as with external parsed entities, parameter entities need only
      --  be included if validating. When a parameter-entity reference is
      --  recognized in the DTD and included, its replacement text MUST be
      --  enlarged by the attachment of one leading and one following space
      --  (#x20) character; the intent is to constrain the replacement text of
      --  parameter entities to contain an integral number of grammatical
      --  tokens in the DTD. This behavior MUST NOT apply to parameter entity
      --  references within entity values; these are described in 4.4.5
      --  Included in Literal."
      --
      --  Set Whitespace_Matched flag, it is used only while processing of DTD,
      --  so the place where parameter entity declarations are allowed.

      Self.Whitespace_Matched := True;
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State :=
       (Source        => Source,
        Data          => Text,
        Entity        => Entity,
        In_Literal    => In_Literal,
        Delimiter     => 0,
        others        => <>);

      if Last_Match then
         Self.Scanner_State.YY_Current_Position :=
           First_Position (Self.Entities, Entity);
         Self.Scanner_State.YY_Current_Index :=
           Integer (First_Position (Self.Entities, Entity)) + 1;

         if In_Document_Type then
            --  External subset processed after processing of internal subset
            --  is completed and scanner returns to DOCTYPE_INT start
            --  condition; but it must be switched back to
            --  DOCTYPE_INTSUBSET_10 or DOCTYPE_INTSUBSET_11 start condition.

            case Self.Version is
               when XML_1_0 =>
                  Enter_Start_Condition (Self, DOCTYPE_INTSUBSET_10);

               when XML_1_1 =>
                  Enter_Start_Condition (Self, DOCTYPE_INTSUBSET_11);
            end case;

         else
            Enter_Start_Condition (Self, Condition);
         end if;

      else
         --  Reset scanner to INITIAL state to be able to process text
         --  declaration at the beginning of the external entity.

         if In_Document_Type then
            --  External subset processed after processing of internal subset
            --  is completed and scanner returns to DOCTYPE_INT start
            --  condition; but it must be switched back to
            --  DOCTYPE_INTSUBSET_10 or DOCTYPE_INTSUBSET_11 start condition.

            case Self.Version is
               when XML_1_0 =>
                  Push_And_Enter_Start_Condition
                   (Self, DOCTYPE_INTSUBSET_10, INITIAL);

               when XML_1_1 =>
                  Push_And_Enter_Start_Condition
                   (Self, DOCTYPE_INTSUBSET_11, INITIAL);
            end case;

         else
            Push_And_Enter_Start_Condition (Self, Condition, INITIAL);
         end if;
      end if;

      return True;
   end Push_Entity;

   ------------------------------
   -- Reset_Whitespace_Matched --
   ------------------------------

   procedure Reset_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := False;
   end Reset_Whitespace_Matched;

   --------------------------------------------
   -- Push_Current_And_Enter_Start_Condition --
   --------------------------------------------

   procedure Push_Current_And_Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     Enter : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (Start_Condition (Self));
      Self.Scanner_State.YY_Start_State := 1 + 2 * Enter;
   end Push_Current_And_Enter_Start_Condition;

   ------------------------------------
   -- Push_And_Enter_Start_Condition --
   ------------------------------------

   procedure Push_And_Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     Push  : Interfaces.Unsigned_32;
     Enter : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (Push);
      Self.Scanner_State.YY_Start_State := 1 + 2 * Enter;
   end Push_And_Enter_Start_Condition;

   ---------------------------------------
   -- Set_Document_Version_And_Encoding --
   ---------------------------------------

   procedure Set_Document_Version_And_Encoding
    (Self     : not null access SAX_Simple_Reader'Class;
     Version  : XML_Version;
     Encoding : League.Strings.Universal_String)
   is
      Restart       : Boolean;
      Success       : Boolean;
      End_Of_Source : Boolean;

   begin
      Pop_Start_Condition (Self);

      if Self.Version /= Version then
         --  [XML1.0 2.8]
         --
         --  "Note: When an XML 1.0 processor encounters a document that
         --  specifies a 1.x version number other than '1.0', it will process
         --  it as a 1.0 document. This means that an XML 1.0 processor will
         --  accept 1.x documents provided they do not use any non-1.0
         --  features."
         --
         --  [XML1.1 4.3.4]
         --
         --  "Each entity, including the document entity, can be separately
         --  declared as XML 1.0 or XML 1.1. The version declaration appearing
         --  in the document entity determines the version of the document as a
         --  whole. An XML 1.1 document may invoke XML 1.0 external entities,
         --  so that otherwise duplicated versions of external entities,
         --  particularly DTD external subsets, need not be maintained.
         --  However, in such a case the rules of XML 1.1 are applied to the
         --  entire document."
         --
         --  So, XML version of the document can be declared only once, in the
         --  XML declaration at the start of the document entity. All other
         --  occurrences of version declaration in external subset and
         --  external entities are ignored. This allows to simplify code of
         --  the version change subprogram.

         Self.Version := Version;

         case Self.Version is
            when XML_1_0 =>
               Enter_Start_Condition (Self, Tables.DOCUMENT_10);

            when XML_1_1 =>
               Enter_Start_Condition (Self, Tables.DOCUMENT_11);
         end case;
      end if;

      case Self.Version is
         when XML_1_0 =>
            Self.Scanner_State.Source.Reset
             (League.Strings.To_Universal_String ("1.0"),
              Encoding,
              Restart,
              Success);

         when XML_1_1 =>
            Self.Scanner_State.Source.Reset
             (League.Strings.To_Universal_String ("1.1"),
              Encoding,
              Restart,
              Success);
      end case;

      if not Success then
         raise Program_Error;
      end if;

      if Restart then
         Matreshka.Internals.Strings.Operations.Reset
          (Self.Scanner_State.Data);
         Self.Scanner_State.Source.Next
          (Self.Scanner_State.Data, End_Of_Source);
      end if;
   end Set_Document_Version_And_Encoding;

   ----------------------------
   -- Set_Whitespace_Matched --
   ----------------------------

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := True;
   end Set_Whitespace_Matched;

   ---------------------
   -- Start_Condition --
   ---------------------

   function Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class)
       return Interfaces.Unsigned_32 is
   begin
      return (Self.Scanner_State.YY_Start_State - 1) / 2;
   end Start_Condition;

   -----------
   -- YYLex --
   -----------

   function YYLex
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      use type XML.SAX.Input_Sources.SAX_Input_Source_Access;

      type YY_End_Of_Buffer_Actions is
       (YY_Continue_Scan,      --  Continue scanning from the current position.
                               --  It is used to continue processing after pop
                               --  up of entity from the scanner's stack.
        YY_Restart_Scan,       --  Restart scanning from the base position.
        YY_Accept_Last_Match,  --  Accept last matched action.
        YY_End_Of_Chunk,       --  End of chunk of data is reached.
        YY_End_Of_Input);      --  End of input is reached.

      YY_Action                  : Interfaces.Unsigned_32;
      YY_C                       : Interfaces.Unsigned_32;
      YY_Current_State           : Interfaces.Unsigned_32;
      YY_Current_Code            : Code_Point;
      YY_Last_Accepting_Position : Utf16_String_Index;
      YY_Last_Accepting_Index    : Positive;
      YY_Last_Accepting_State    : Interfaces.Unsigned_32;
      YY_Last_Accepting_Line     : Natural;
      YY_Last_Accepting_Column   : Natural;
      YY_Last_Accepting_Skip_LF  : Boolean;
      YY_Last_Accepting          : Boolean;
      YY_Next_Position           : Utf16_String_Index;
      YY_Next_Index              : Positive;
      YY_Next_Line               : Natural;
      YY_Next_Column             : Natural;
      YY_Next_Skip_LF            : Boolean;
      YY_Last_Match_Position     : Utf16_String_Index;
      YY_Last_Match_Index        : Positive;
      YY_Last_Match_State        : Interfaces.Unsigned_32;
      YY_Last_Match              : Boolean;
      YYLVal                     : YYSType renames Self.YYLVal;
      YY_Last                    : Utf16_String_Index;
      End_Of_Source              : Boolean;
      YY_End_Of_Buffer_Action    : YY_End_Of_Buffer_Actions;
      YY_Position_Offset         : Utf16_String_Index;
      YY_Index_Offset            : Natural;
      YY_Start_Condition         : Interfaces.Unsigned_32;

      function YY_Text
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return League.Strings.Universal_String;

      function YY_Text_Internal
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return Matreshka.Internals.Strings.Shared_String_Access;

      -------------
      -- YY_Text --
      -------------

      function YY_Text
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return League.Strings.Universal_String
      is
         --  Trailing and leading character as well as whitespace characters
         --  belongs to BMP and don't require expensive UTF-16 decoding.

         FP : Utf16_String_Index
          := Self.Scanner_State.YY_Base_Position
               + Utf16_String_Index (Trim_Left);
         FI : Positive := Self.Scanner_State.YY_Base_Index + Trim_Left;
         LP : constant Utf16_String_Index
          := Self.Scanner_State.YY_Current_Position
               - Utf16_String_Index (Trim_Right);
         LI : constant Positive
           := Self.Scanner_State.YY_Current_Index - Trim_Right;
         C  : Code_Point;

      begin
         if Trim_Whitespace then
            loop
               C := Code_Point (Self.Scanner_State.Data.Value (FP));

               exit when
                 C /= Space
                   and then C /= Character_Tabulation
                   and then C /= Carriage_Return
                   and then C /= Line_Feed;

               FP := FP + 1;
               FI := FI + 1;
            end loop;
         end if;

         return
           League.Strings.Internals.Wrap
            (Matreshka.Internals.Strings.Operations.Slice
              (Self.Scanner_State.Data, FP, LP - FP, LI - FI));
      end YY_Text;

      ----------------------
      -- YY_Text_Internal --
      ----------------------

      function YY_Text_Internal
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return Matreshka.Internals.Strings.Shared_String_Access
      is
         --  Trailing and leading character as well as whitespace characters
         --  belongs to BMP and don't require expensive UTF-16 decoding.

         FP : Utf16_String_Index
           := Self.Scanner_State.YY_Base_Position
                + Utf16_String_Index (Trim_Left);
         FI : Positive := Self.Scanner_State.YY_Base_Index + Trim_Left;
         LP : constant Utf16_String_Index
           := Self.Scanner_State.YY_Current_Position
                - Utf16_String_Index (Trim_Right);
         LI : constant Positive
           := Self.Scanner_State.YY_Current_Index - Trim_Right;
         C  : Code_Point;

      begin
         if Trim_Whitespace then
            loop
               C := Code_Point (Self.Scanner_State.Data.Value (FP));

               exit when
                 C /= Space
                   and then C /= Character_Tabulation
                   and then C /= Carriage_Return
                   and then C /= Line_Feed;

               FP := FP + 1;
               FI := FI + 1;
            end loop;
         end if;

         return
           Matreshka.Internals.Strings.Operations.Slice
            (Self.Scanner_State.Data, FP, LP - FP, LI - FI);
      end YY_Text_Internal;

   begin
      loop  --  Loops until end-of-data is reached.
         Self.Scanner_State.YY_Base_Position :=
           Self.Scanner_State.YY_Current_Position;
         Self.Scanner_State.YY_Base_Index    :=
           Self.Scanner_State.YY_Current_Index;
         Self.Scanner_State.YY_Base_Line     :=
           Self.Scanner_State.YY_Current_Line;
         Self.Scanner_State.YY_Base_Column   :=
           Self.Scanner_State.YY_Current_Column;
         Self.Scanner_State.YY_Base_Skip_LF  :=
           Self.Scanner_State.YY_Current_Skip_LF;
         YY_Current_State := Self.Scanner_State.YY_Start_State;
         YY_Last_Match := False;
         YY_Last_Accepting := False;

         loop
            YY_Next_Position := Self.Scanner_State.YY_Current_Position;
            YY_Next_Index    := Self.Scanner_State.YY_Current_Index;
            YY_Next_Line     := Self.Scanner_State.YY_Current_Line;
            YY_Next_Column   := Self.Scanner_State.YY_Current_Column;
            YY_Next_Skip_LF  := Self.Scanner_State.YY_Current_Skip_LF;

            if YY_Next_Position < Self.Scanner_State.Data.Unused then
               Unchecked_Next
                (Self.Scanner_State.Data.Value,
                 YY_Next_Position,
                 YY_Current_Code);
               YY_Next_Index := YY_Next_Index + 1;

               --  Track line/column in entity

               if YY_Current_Code = Carriage_Return then
                  --  Start of new line.

                  YY_Next_Line    := YY_Next_Line + 1;
                  YY_Next_Column  := 1;
                  YY_Next_Skip_LF := True;

               elsif YY_Current_Code = Line_Feed then
                  if YY_Next_Skip_LF then
                     --  Ignore CR after LF.

                     YY_Next_Skip_LF := False;

                  else
                     YY_Next_Line   := YY_Next_Line + 1;
                     YY_Next_Column := 1;
                  end if;

               else
                  --  Move to next column.

                  YY_Next_Column  := YY_Next_Column + 1;
                  YY_Next_Skip_LF := False;
               end if;

               YY_C :=
                 YY_EC_Base
                  (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);

               if YY_Current_Code = 0 then
                  --  NUL character (code point 0) can't be used in XML
                  --  documents.

                  raise Program_Error with "NUL character in document";
               end if;

            else
               --  End of buffer reached.

               YY_C := 0;
               --  Aflex uses character with code point zero to mark end of
               --  buffer character. This character always has YY_EC zero.

               YY_Last_Match := YY_Last_Accepting;

               if YY_Last_Accepting then
                  YY_Last_Match_Position := YY_Last_Accepting_Position;
                  YY_Last_Match_Index    := YY_Last_Accepting_Index;
                  YY_Last_Match_State    := YY_Last_Accepting_State;
               end if;
            end if;

            if YY_Accept (YY_Current_State) /= 0 then
               --  Accepting state reached, save for possible backtrack.

               YY_Last_Accepting_Position :=
                 Self.Scanner_State.YY_Current_Position;
               YY_Last_Accepting_Index    :=
                 Self.Scanner_State.YY_Current_Index;
               YY_Last_Accepting_Line     :=
                 Self.Scanner_State.YY_Current_Line;
               YY_Last_Accepting_Column   :=
                 Self.Scanner_State.YY_Current_Column;
               YY_Last_Accepting_Skip_LF  :=
                 Self.Scanner_State.YY_Current_Skip_LF;
               YY_Last_Accepting_State    := YY_Current_State;
               YY_Last_Accepting          := True;
            end if;

            while YY_Chk (YY_Base (YY_Current_State) + YY_C)
                    /= YY_Current_State
            loop
               YY_Current_State := YY_Def (YY_Current_State);

               if YY_Current_State >= YY_First_Template then
                  YY_C := YY_Meta (YY_C);
               end if;
            end loop;

            Self.Scanner_State.YY_Current_Position := YY_Next_Position;
            Self.Scanner_State.YY_Current_Index    := YY_Next_Index;
            Self.Scanner_State.YY_Current_Line     := YY_Next_Line;
            Self.Scanner_State.YY_Current_Column   := YY_Next_Column;
            Self.Scanner_State.YY_Current_Skip_LF  := YY_Next_Skip_LF;
            YY_Current_State := YY_Nxt (YY_Base (YY_Current_State) + YY_C);

            exit when YY_Current_State = YY_Jam_State;
         end loop;

         --  Return back to last accepting state.

         Self.Scanner_State.YY_Current_Position := YY_Last_Accepting_Position;
         Self.Scanner_State.YY_Current_Index    := YY_Last_Accepting_Index;
         Self.Scanner_State.YY_Current_Line     := YY_Last_Accepting_Line;
         Self.Scanner_State.YY_Current_Column   := YY_Last_Accepting_Column;
         Self.Scanner_State.YY_Current_Skip_LF  := YY_Last_Accepting_Skip_LF;
         YY_Current_State                       := YY_Last_Accepting_State;

   <<Next_Action>>
         YY_Action := YY_Accept (YY_Current_State);

         case YY_Action is
            when 0 =>  --  must backtrack
               if YY_Last_Accepting then
                  Self.Scanner_State.YY_Current_Position :=
                    YY_Last_Accepting_Position;
                  Self.Scanner_State.YY_Current_Index    :=
                    YY_Last_Accepting_Index;
                  YY_Current_State                       :=
                    YY_Last_Accepting_State;
                  YY_Last_Accepting                      := False;

                  goto Next_Action;

               else
                  raise Program_Error;
               end if;

            when 1 =>
               --  Open of XML declaration or text declaration, rules [23], [77].

               return Actions.On_Open_Of_XML_Or_Text_Declaration (Self);

            when 2 =>
               --  Any character except literal "<?xml" means there is no XML declaration
               --  in this document/external parsed entity.

               Actions.On_No_XML_Declaration (Self);

            when 3 =>
               --  Open of processing instruction, rule [16]. Rule [17] is implemented
               --  implicitly by ordering of open of XMLDecl and open of PI.

               return Actions.On_Open_Of_Processing_Instruction (Self);

            when 4 =>
               --  Open tag of document type declaration and name of root element,
               --  rule [28].

               return Actions.On_Open_Of_Document_Type_Declaration (Self);

            when 5 =>
               --  Open of start tag, rule [40], or empty element, rule [44].

               return Actions.On_Open_Of_Start_Tag (Self);

            when 6 =>
               --  Open of end tag, rule [42].

               return Actions.On_Open_Of_End_Tag (Self);

            when 7 =>
               --  Segment of whitespaces.

               if Actions.On_Whitespace_In_Document (Self) then
                  return Token_String_Segment;
               end if;

            when 8 =>
               --  Segment of character data, rule [14].

               return Actions.On_Character_Data (Self);

            when 9 =>
               --  Segment of character data, rule [14].

               return Actions.On_Character_Data (Self);

            when 10 =>
               --  Segment of CDATA, rules [18], [19], [20], [21].

               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (9, 3),
                 Is_Whitespace => False,
                 Is_CData      => True);

               return Token_String_Segment;

            when 11 =>
               --  Segment of CDATA, rules [18], [19], [20], [21].

               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (9, 3),
                 Is_Whitespace => False,
                 Is_CData      => True);

               return Token_String_Segment;

            when 12 =>
               --  General entity reference rule [68] in document content.

               if not Actions.On_General_Entity_Reference_In_Document_Content (Self) then
                  --  Error is detected during handling, return error token to parser.

                  return Error;
               end if;

            when 13 =>
               --  [24] VersionInfo

               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'version' keyword";
                  --  XXX This is recoverable error.
               end if;

               return Token_Version;

            when 14 =>
               --  [80] EncodingDecl

               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'encoding' keyword";
                  --  XXX This is recoverable error.
               end if;

               return Token_Encoding;

            when 15 =>
               --  [32] SDDecl

               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'standalone' keyword";
                  --  XXX This is recoverable error.
               end if;

               return Token_Standalone;

            when 16 =>
               --  Synthetic rule. XMLDECL_ATTRIBUTE_CHAR is a union of characters allowed
               --  by [26] VersionNum, [81] EncName, [32] SDDecl. Precise check is
               --  processed while parsing.

               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (1, 1),
                 Is_Whitespace => False,
                 Is_CData      => False);
               Reset_Whitespace_Matched (Self);

               return Token_String_Segment;

            when 17 =>
               --  Close of XML declaration (production [23]) or text declaration
               --  (production [77]).

               return Actions.On_Close_Of_XML_Or_Text_Declaration (Self);

            when 18 =>
               --  Close of processing instruction (rule [16]).

               return Actions.On_Close_Of_Processing_Instruction (Self, True);

            when 19 =>
               --  Ignore all whitespaces is followed by processing insturction's name,
               --  rule [16].

               Actions.On_Whitespace_In_Processing_Instruction (Self);

            when 20 =>
               --  Segment of data and close delimiter of the processing instruction, rule
               --  [16].

               return Actions.On_Close_Of_Processing_Instruction (Self, False);

            when 21 =>
               --  Segment of data and close delimiter of the processing instruction, rule
               --  [16].

               return Actions.On_Close_Of_Processing_Instruction (Self, False);

            when 22 =>
               --  Keyword SYSTEM, rule [75].

               Reset_Whitespace_Matched (Self);
               Push_And_Enter_Start_Condition (Self, DOCTYPE_INT, EXTERNAL_ID_SYS);

               return Token_System;

            when 23 =>
               --  System literal, rule [11], used in rule [75].

               return Actions.On_System_Literal (Self);

            when 24 =>
               --  Productions [82], [83] allows absence of system literal in
               --  notation declaration.

               Pop_Start_Condition (Self);

               if Start_Condition (Self) = NOTATION_DECL then
                  Pop_Start_Condition (Self);
               end if;

               return Token_Close;

            when 25 =>
               --  Keyword PUBLIC, rule [75].

               Reset_Whitespace_Matched (Self);
               Push_And_Enter_Start_Condition (Self, DOCTYPE_INT, EXTERNAL_ID_PUB);

               return Token_Public;

            when 26 =>
               --  Public id literal, rule [12], used in rule [75].

               return Actions.On_Public_Literal (Self);

            when 27 =>
               --  Open of internal subset declaration, rule [28].

               return Actions.On_Open_Of_Internal_Subset (Self);

            when 28 =>
               --  Close of internal subset declaration, rule [28].

               Enter_Start_Condition (Self, DOCTYPE_INT);

               return Token_Internal_Subset_Close;

            when 29 =>
               --  Text of comment, rule [15].

               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (4, 3),
                 Is_Whitespace => False,
                 Is_CData      => False);

               return Token_Comment;

            when 30 =>
               --  Text of comment, rule [15].

               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (4, 3),
                 Is_Whitespace => False,
                 Is_CData      => False);

               return Token_Comment;

            when 31 =>
               --  Parameter entity reference rule [69] in document type declaration.

               if not Actions.On_Parameter_Entity_Reference_In_Document_Declaration (Self) then
                  return Error;
               end if;

            when 32 =>
               --  Open of entity declaration, rules [71], [72].

               Enter_Start_Condition (Self, ENTITY_DECL);
               Reset_Whitespace_Matched (Self);

               return Token_Entity_Decl_Open;

            when 33 =>
               --  Open of element declaration and name of the element, rule [45].

               return Actions.On_Open_Of_Element_Declaration (Self);

            when 34 =>
               --  Open of attribute list declaration, rule [52].

               return Actions.On_Open_Of_Attribute_List_Declaration (Self);

            when 35 =>
               --  Open of notation declaration, production [82].

               return Actions.On_Open_Of_Notation_Declaration (Self);

            when 36 =>
               --  Start of conditional section.

               Actions.On_Open_Of_Conditional_Section (Self);

            when 37 =>
               --  Close of conditional section.

               Actions.On_Close_Of_Conditional_Section (Self);

            when 38 =>
               --  Close of notation declaration, production [82].

               Pop_Start_Condition (Self);

               return Token_Close;

            when 39 =>
               --  Name in entity declaration, rules [71], [72].

               return Actions.On_Name_In_Entity_Declaration (Self);

            when 40 =>
               --  Percent mark in parameter entity declaration, rule [72].

               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error
                    with "no whitespace before percent in parameter entity declaration";
                  --  XXX This is recoverable error.
               end if;

               Reset_Whitespace_Matched (Self);

               return Token_Percent;

            when 41 =>
               --  Entity value, rule [9].

               return Actions.On_Entity_Value_Open_Delimiter (Self);

            when 42 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].

               Reset_Whitespace_Matched (Self);
               Push_Current_And_Enter_Start_Condition (Self, EXTERNAL_ID_SYS);

               return Token_System;

            when 43 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
               --  Notation as ExternalID or Public_ID (productions [75], [82], [83]).

               Reset_Whitespace_Matched (Self);
               Push_Current_And_Enter_Start_Condition (Self, EXTERNAL_ID_PUB);

               return Token_Public;

            when 44 =>
               --  NDATA keyword, rule [76].

               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before NDATA";
                  --  XXX This is recoverable error.
               end if;

               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, ENTITY_NDATA);

               return Token_NData;

            when 45 =>
               --  Name of NDATA, rule [76].

               return Actions.On_Name_In_Entity_Declaration_Notation (Self);

            when 46 =>
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);

               return Token_String_Segment;

            when 47 =>
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);

               return Token_String_Segment;

            when 48 =>
               --  Close of entity value, rule [9].

               return Actions.On_Entity_Value_Close_Delimiter (Self);

            when 49 =>
               --  Decimal form of character reference rule [66] in entity value rule [9];
               --  or content of element, rule [43].

               return Actions.On_Character_Reference (Self, False);

            when 50 =>
               --  Decimal form of character reference rule [66] in attribute value,
               --  rule [10].

               if not Actions.On_Character_Reference_In_Attribute_Value
                       (Self, False)
               then
                  return Error;
               end if;

            when 51 =>
               --  Hexadecimal form of character reference rule [66] in entity value rule
               --  [9] or content of element, rule [43].

               return Actions.On_Character_Reference (Self, True);

            when 52 =>
               --  Hexadecimal form of character reference rule [66] in attribute value,
               --  rule [10].

               if not Actions.On_Character_Reference_In_Attribute_Value
                       (Self, True)
               then
                  return Error;
               end if;

            when 53 =>
               --  General entity reference rule [68] in entity value rule [9].

               return Actions.On_General_Entity_Reference_In_Entity_Value (Self);

            when 54 =>
               --  Parameter entity reference rule [69] in entity value rule [9].
               --
               --  Processing of parameter entity uses separate scanner's state, thus
               --  after processing current state is restored automatically. This allows
               --  to reuse code for three modes: parsing of entity value delimited by
               --  quotation; parsing of entity value delimited by apostrophe; and
               --  parsing of parameter entity replacement text when it is referenced
               --  in any of two form of entity value.

               if not Actions.On_Parameter_Entity_Reference_In_Entity_Value (Self) then
                  return Error;
               end if;

            when 55 =>
               --  Name of the element in element declaration.

               return Actions.On_Name_In_Element_Declaration (Self);

            when 56 =>
               --  EMPTY keyword, rule [46].

               return Token_Empty;

            when 57 =>
               --  ANY keyword, rule [46].

               return Token_Any;

            when 58 =>
               --  Open parenthesis, rules [49], [50], [51].

               Enter_Start_Condition (Self, ELEMENT_CHILDREN);

               return Token_Open_Parenthesis;

            when 59 =>
               --  Close parenthesis, rules [49], [50], [51].

               return Token_Close_Parenthesis;

            when 60 =>
               --  Question mark in rules [47], [48].

               return Token_Question;

            when 61 =>
               --  Asterisk in rules [47], [48].

               return Token_Asterisk;

            when 62 =>
               --  Plus sign in rules [47], [48].

               return Token_Plus;

            when 63 =>
               --  Vertical bar in rule [49].

               return Token_Vertical_Bar;

            when 64 =>
               --  Comma in rule [50].

               return Token_Comma;

            when 65 =>
               --  #PCDATA in rule [51].

               return Token_PCData;

            when 66 =>
               --  Name in element's children declaration, rules [48], [51].

               return Actions.On_Name_In_Element_Declaration_Children (Self);

            when 67 =>
               --  Close token of entity declaration, rules [71], [72].
               --  Close of element declaration, rule [45].
               --  Close of attribute list declaration, rule [52].

               return Actions.On_Close_Of_Declaration (Self);

            when 68 =>
               --  Element's name in attribute list declaration, rule [52].

               return Actions.On_Element_Name_In_Attribute_List_Declaration (Self);

            when 69 =>
               --  Name of the attribute, rule [53].

               return Actions.On_Attribute_Name_In_Attribute_List_Declaration (Self);

            when 70 =>
               --  CDATA keyword, rule [55].

               return Token_CData;

            when 71 =>
               --  ID keyword, rule [56].

               return Token_Id;

            when 72 =>
               --  IDREF keyword, rule [56].

               return Token_IdRef;

            when 73 =>
               --  IDREFS keyword, rule [56].

               return Token_IdRefs;

            when 74 =>
               --  ENTITY keyword, rule [56].

               return Token_Entity;

            when 75 =>
               --  ENTITIES keyword, rule [56].

               return Token_Entities;

            when 76 =>
               --  NMTOKEN keyword, rule [56].

               return Token_NmToken;

            when 77 =>
               --  NMTOKENS keyword, rule [56].

               return Token_NmTokens;

            when 78 =>
               --  NOTATION keyword, rule [58].

               return Token_Notation;

            when 79 =>
               --  #REQUIRED keyword, rule [60].

               Enter_Start_Condition (Self, ATTLIST_DECL);

               return Token_Required;

            when 80 =>
               --  #IMPLIED keyword, rule [60].

               Enter_Start_Condition (Self, ATTLIST_DECL);

               return Token_Implied;

            when 81 =>
               --  #FIXED keyword, rule [60].

               return Token_Fixed;

            when 82 =>
               --  Open parenthesis, rules [58], [59].

               return Token_Open_Parenthesis;

            when 83 =>
               --  Close parenthesis, rules [58], [59].

               return Token_Close_Parenthesis;

            when 84 =>
               --  Vertical bar, rules [58], [59].

               return Token_Vertical_Bar;

            when 85 =>
               --  Name in the rule [58].

               return Actions.On_Name_In_Attribute_List_Declaration_Notation (Self);

            when 86 =>
               --  Nmtoken in the rule [59].

               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);
               --  XXX Need to add flag to mark Nmtoken.

               return Token_Name;

            when 87 =>
               --  Open delimiter of attribute value, rule [10].

               Actions.On_Attribute_Value_Open_Delimiter (Self, ATTLIST_DECL);

            when 88 =>
               --  Parameter entity reference rule [69] in attribute declaration.
               --  Parameter entity reference in element's children declaration, [51].

               if not Actions.On_Parameter_Entity_Reference_In_Markup_Declaration (Self) then
                  return Error;
               end if;

            when 89 =>
               --  All white spaces from rules [28] are ignored.
               --  Whitespace before name in rule [76] is ignored.

               null;

            when 90 =>
               --  IGNORE directive of the conditional section.

               Actions.On_Conditional_Section_Directive (Self, False);

            when 91 =>
               --  INCLUDE directive of the conditional section.

               Actions.On_Conditional_Section_Directive (Self, True);

            when 92 =>
               --  Start of content of conditional section.

               Actions.On_Open_Of_Conditional_Section_Content (Self);

            when 93 =>
               --  Content of ignore conditional section. It ends with "]]>" or "<![".

               null;

            when 94 =>
               --  Content of ignore conditional section. It ends with "]]>" or "<![".

               null;

            when 95 =>
               --  White spaces in entity declaration are not optional, rules [71], [72],
               --  [75], [76].
               --
               --  White spaces in start tag, rule [40], are ignored, but white space
               --  between attribute value and name of the next attribute are must be
               --  present.
               --
               --  All white spaces from rules [23], [24], [25], [32], [80], [82] are
               --  ignored, but white space between attribute value and name of the
               --  next attribute are must be present.

               Set_Whitespace_Matched (Self);

            when 96 =>
               --  Name of the attribute, rule [41].

               return Actions.On_Name_In_Element_Start_Tag (Self);

            when 97 =>
               --  Equal sign as attribute's name value delimiter, rule [25] in rules [41],
               --  [24], [32], [80].

               return Token_Equal;

            when 98 =>
               --  Close of empty element tag, rule [44].

               return Actions.On_Close_Of_Empty_Element_Tag (Self);

            when 99 =>
               --  Close tag of document type declaration, rule [28].

               if Actions.On_Close_Of_Document_Type_Declaration (Self) then
                  return Token_Close;
               end if;

            when 100 =>
               --  Close of tag, rule [40].
               --  Close tag of document type declaration, rule [28].

               return Actions.On_Close_Of_Tag (Self);

            when 101 =>
               --  Open delimiter of attribute value, rule [10].

               Actions.On_Attribute_Value_Open_Delimiter (Self, ELEMENT_START);

            when 102 =>
               --  Close delimiter of attribute value, rule [10].

               if Actions.On_Attribute_Value_Close_Delimiter (Self) then
                  return Token_String_Segment;
               end if;

            when 103 =>
               --  Value of attribute, rule [10].

               Actions.On_Attribute_Value_Character_Data (Self);

            when 104 =>
               --  Value of attribute, rule [10].

               Actions.On_Attribute_Value_Character_Data (Self);

            when 105 =>
               --  Less-than sign can't be used in the attribute value.

               return Actions.On_Less_Than_Sign_In_Attribute_Value (Self);

            when 106 =>
               --  General entity reference rule [68] in attribute value, rule [10].

               if not Actions.On_General_Entity_Reference_In_Attribute_Value (Self) then
                  return Error;
               end if;

            when 107 =>
               raise Program_Error with "Unexpected character in XML_DECL";

            when 108 =>
               raise Program_Error with "Unexpected character in DOCTYPE_INT";

            when 109 =>
               raise Program_Error with "Unexpected character in ENTITY_DECL";

            when 110 =>
               raise Program_Error with "Unexpected character in ENTITY_NDATA";

            when 111 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in ATTLIST_DECL";

            when 112 =>
               raise Program_Error with "Unexpected character in pubid literal";

            when 113 =>
               raise Program_Error with "Unexpected character in system literal";

            when 114 =>
               raise Program_Error with "Unexpected character in NOTATION_DECL";

            when 115 =>
               --  Unexpected character.

               return Actions.On_Unexpected_Character (Self);
--            when YY_END_OF_BUFFER + INITIAL + 1 
--            =>
--               return End_Of_Input;
--
            when YY_End_Of_Buffer =>
               if Self.Scanner_State.Source /= null then
                  --  Input source is used to retrieve data.

                  if Is_Document_Entity
                      (Self.Entities, Self.Scanner_State.Entity)
                    and Self.Scanner_State.YY_Base_Position /= 0
                  then
                     --  For document entity, remove already scanned data.
                     --  Construct slice only when we actually need to move
                     --  data.

                     Matreshka.Internals.Strings.Operations.Slice
                      (Self.Scanner_State.Data,
                       Self.Scanner_State.YY_Base_Position,
                       Self.Scanner_State.Data.Unused
                         - Self.Scanner_State.YY_Base_Position,
                       Self.Scanner_State.Data.Length
                         - Self.Scanner_State.YY_Base_Index + 1);

                     YY_Position_Offset := Self.Scanner_State.YY_Base_Position;
                     YY_Index_Offset    :=
                       Self.Scanner_State.YY_Base_Index - 1;

                     Self.Scanner_State.YY_Base_Position :=
                       Self.Scanner_State.YY_Base_Position
                         - YY_Position_Offset;
                     Self.Scanner_State.YY_Base_Index :=
                       Self.Scanner_State.YY_Base_Index - YY_Index_Offset;
                     Self.Scanner_State.YY_Current_Position :=
                       Self.Scanner_State.YY_Current_Position
                         - YY_Position_Offset;
                     Self.Scanner_State.YY_Current_Index :=
                       Self.Scanner_State.YY_Current_Index - YY_Index_Offset;

                     if YY_Last_Match then
                        YY_Last_Match_Position :=
                          YY_Last_Match_Position - YY_Position_Offset;
                        YY_Last_Match_Index :=
                          YY_Last_Match_Index - YY_Index_Offset;
                     end if;
                  end if;

                  --  Obtain next portion of data from the input source.

                  YY_Last := Self.Scanner_State.Data.Unused;

                  Self.Scanner_State.Source.Next
                   (Self.Scanner_State.Data, End_Of_Source);

                  YY_End_Of_Buffer_Action := YY_Restart_Scan;

                  if YY_Last = Self.Scanner_State.Data.Unused then
                     --  There is no new data retrieved, handle end of source
                     --  state. It is possible to not reach end of source and
                     --  retrieve no new data at the same time, for example
                     --  when source data is mailformed and decoder unable to
                     --  convert data. The same situtation is possible when
                     --  some kind of filter is inserted between input source
                     --  and actual stream (SSL/TLS encription, for example).

                     if End_Of_Source then
                        --  Replacement text of the entity is loaded from input
                        --  source and need to be stored in the entities table,
                        --  except replacement text of the document entity.
                        --  Input source can be deallocated.

                        if not Is_Document_Entity
                                (Self.Entities, Self.Scanner_State.Entity)
                        then
                           Set_Replacement_Text
                            (Self.Entities,
                             Self.Scanner_State.Entity,
                             Self.Scanner_State.Data);

                           Free (Self.Scanner_State.Source);
                           --  XXX Input source should not be deallocated, it
                           --  can be needed later to reread entity when XML
                           --  version (document entity only) or encoding is
                           --  changed.

                        else
                           Self.Scanner_State.Source := null;
                           --  Input source of document entity is managed by
                           --  application.
                        end if;

                     elsif Self.Scanner_State.Incremental then
                        YY_End_Of_Buffer_Action := YY_End_Of_Chunk;

                        --  In incremental mode, when element tag is processed
                        --  and buffer ends on '>' or '/>' processing of last
                        --  matched pattern is forced to prevent waiting till
                        --  next portion of data is readed. This allows to
                        --  applications to process start/end/empty tags
                        --  immidiately, which is implicitly expected by
                        --  users.

                        if Start_Condition (Self) = Element_Start then
                           if ((Self.Scanner_State.YY_Current_Position
                                  - Self.Scanner_State.YY_Base_Position) = 1
                                 and then Self.Scanner_State.Data.Value
                                  (Self.Scanner_State.YY_Base_Position)
                                     = Greater_Than_Sign)
                             or ((Self.Scanner_State.YY_Current_Position
                                    - Self.Scanner_State.YY_Base_Position) = 2
                                 and then Self.Scanner_State.Data.Value
                                  (Self.Scanner_State.YY_Base_Position)
                                     = Solidus
                                 and then Self.Scanner_State.Data.Value
                                  (Self.Scanner_State.YY_Base_Position + 1)
                                     = Greater_Than_Sign)
                           then
                              YY_End_Of_Buffer_Action := YY_Accept_Last_Match;
                           end if;
                        end if;
                     end if;
                  end if;

               else
                  --  Input source is not used, complete replacement text of
                  --  the entity is in the scanner's buffer. This covers two
                  --  cases: (1) entity is internal or predefined entity, and
                  --  (2) text of the entity is loaded completely.

                  if Self.Scanner_State.Data.Unused
                       /= Self.Scanner_State.YY_Base_Position
                  then
                     --  Continue processing till end of buffer will be
                     --  reached.

                     YY_End_Of_Buffer_Action := YY_Accept_Last_Match;

                  else
                     --  Replacement text of the entity is completely scanned,
                     --  pop scanner's entity stack. When scanner's stack is
                     --  empty returns End_Of_Input token.

                     if not Self.Scanner_Stack.Is_Empty then
                        if Is_Parameter_Entity
                            (Self.Entities, Self.Scanner_State.Entity)
                        then
                           --  For parameter entities start condition need to
                           --  be propagated to previous state, otherwise
                           --  scanner can start from the wrong condition.
                           --  For non-parameter entities it is not needed,
                           --  because their processing doesn't use stack of
                           --  start conditions.

                           YY_Start_Condition := Start_Condition (Self);
                           Free (Self.Scanner_State.Source);
                           Self.Scanner_State :=
                             Self.Scanner_Stack.Last_Element;
                           Self.Scanner_Stack.Delete_Last;
                           Enter_Start_Condition (Self, YY_Start_Condition);

                           --  [XML 4.4.8] Included as PE
                           --
                           --  "Just as with external parsed entities,
                           --  parameter entities need only be included if
                           --  validating. When a parameter-entity reference is
                           --  recognized in the DTD and included, its
                           --  replacement text MUST be enlarged by the
                           --  attachment of one leading and one following
                           --  space (#x20) character; the intent is to
                           --  constrain the replacement text of parameter
                           --  entities to contain an integral number of
                           --  grammatical tokens in the DTD. This behavior
                           --  MUST NOT apply to parameter entity references
                           --  within entity values; these are described in
                           --  4.4.5 Included in Literal."
                           --
                           --  Set Whitespace_Matched flag, it is used only
                           --  while processing of DTD, so the place where
                           --  parameter entity declarations are allowed.

                           Self.Whitespace_Matched := True;

                        else
                           Free (Self.Scanner_State.Source);
                           Self.Scanner_State :=
                             Self.Scanner_Stack.Last_Element;
                           Self.Scanner_Stack.Delete_Last;
                        end if;

                        YY_End_Of_Buffer_Action := YY_Continue_Scan;

                     else
                        YY_End_Of_Buffer_Action := YY_End_Of_Input;
                     end if;
                  end if;
               end if;

               case YY_End_Of_Buffer_Action is
                  when YY_Continue_Scan =>
                     null;

                  when YY_Restart_Scan | YY_End_Of_Chunk =>
                     --  Back current position to base position.

                     Self.Scanner_State.YY_Current_Position :=
                       Self.Scanner_State.YY_Base_Position;
                     Self.Scanner_State.YY_Current_Index    :=
                       Self.Scanner_State.YY_Base_Index;
                     Self.Scanner_State.YY_Current_Line    :=
                       Self.Scanner_State.YY_Base_Line;
                     Self.Scanner_State.YY_Current_Column  :=
                       Self.Scanner_State.YY_Base_Column;
                     Self.Scanner_State.YY_Current_Skip_LF :=
                       Self.Scanner_State.YY_Base_Skip_LF;

                     if YY_End_Of_Buffer_Action = YY_End_Of_Chunk then
                        return End_Of_Chunk;
                     end if;

                  when YY_Accept_Last_Match =>
                     --  Replace current position to last matched position and
                     --  process matched action.

                     --  XXX: Other cases handle line/column numbers and
                     --  "skip LF" flag also, should they be handled here?

                     if YY_Last_Match then
                        Self.Scanner_State.YY_Current_Position :=
                          YY_Last_Match_Position;
                        Self.Scanner_State.YY_Current_Index    :=
                          YY_Last_Match_Index;
                        YY_Current_State                       :=
                          YY_Last_Match_State;
                        YY_Last_Match                          := False;

                     else
                        raise Program_Error;
                     end if;

                     goto Next_Action;

                  when YY_End_Of_Input =>
                     return End_Of_Input;
               end case;

            when others =>
               raise Program_Error
                 with "Unhandled action"
                        & Interfaces.Unsigned_32'Image (YY_Action)
                        & " in scanner";
         end case;
      end loop;  --  end of loop waiting for end of file
   end YYLex;

   -------------
   -- YY_Text --
   -------------

   function YY_Text
    (Self            : not null access SAX_Simple_Reader'Class;
     Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False)
       return Matreshka.Internals.Strings.Shared_String_Access
   is
      --  Trailing and leading character as well as whitespace characters
      --  belongs to BMP and don't require expensive UTF-16 decoding.

      FP : Utf16_String_Index
        := Self.Scanner_State.YY_Base_Position
             + Utf16_String_Index (Trim_Left);
      FI : Positive := Self.Scanner_State.YY_Base_Index + Trim_Left;
      LP : constant Utf16_String_Index
        := Self.Scanner_State.YY_Current_Position
             - Utf16_String_Index (Trim_Right);
      LI : constant Positive
        := Self.Scanner_State.YY_Current_Index - Trim_Right;
      C  : Code_Point;

   begin
      if Trim_Whitespace then
         loop
            C := Code_Point (Self.Scanner_State.Data.Value (FP));

            exit when
              C /= Space
                and then C /= Character_Tabulation
                and then C /= Carriage_Return
                and then C /= Line_Feed;

            FP := FP + 1;
            FI := FI + 1;
         end loop;
      end if;

      return
        Matreshka.Internals.Strings.Operations.Slice
         (Self.Scanner_State.Data, FP, LP - FP, LI - FI);
   end YY_Text;

end XML.SAX.Simple_Readers.Scanner;
