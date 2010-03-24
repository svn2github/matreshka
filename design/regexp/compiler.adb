with Ada.Containers.Vectors;

package body Compiler is

   use Engine;
   use Syntax;

   package Integer_Vectors is
     new Ada.Containers.Vectors (Positive, Integer);

   -------------
   -- Compile --
   -------------

   function Compile return Engine.Instruction_Array is
      use Integer_Vectors;

      Program            : Instruction_Array (1 .. AST_Last * 9);
      Last               : Natural := 0;
      Last_Subexpression : Natural := 0;

      procedure Compile
        (Expression  : Positive;
         Instruction : out Positive;
         Tails       : out Vector);

      procedure Connect_Tails (Tails : Vector; Instruction : Positive);

      -------------
      -- Compile --
      -------------

      procedure Compile
        (Expression  : Positive;
         Instruction : out Positive;
         Tails       : out Vector)
      is
         procedure Compile_Next;

         ------------------
         -- Compile_Next --
         ------------------

         procedure Compile_Next is
         begin
            if AST (Expression).Next /= 0 then
               declare
                  Next_Instruction : Positive;
                  Previous_Tails   : Vector := Tails;

               begin
                  Compile (AST (Expression).Next, Next_Instruction, Tails);
                  Connect_Tails (Previous_Tails, Next_Instruction);
               end;
            end if;
         end Compile_Next;

      begin
         case AST (Expression).Kind is
            when Alternation =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               declare
                  Ins_1   : Positive;
                  Ins_2   : Positive;
                  Tails_1 : Vector;
                  Tails_2 : Vector;

               begin
                  Compile (AST (Expression).First, Ins_1, Tails_1);
                  Compile (AST (Expression).Second, Ins_2, Tails_2);
                  Program (Instruction) := (Split, Ins_1, Ins_2);

                  Tails := Tails_1 & Tails_2;
               end;

            when Any_Code_Point =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               Program (Instruction) := (Any_Code_Point, 0);
               Tails.Append (Instruction);
               Compile_Next;

            when Code_Point =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               Program (Instruction) := (Code_Point, 0, AST (Expression).Code);
               Tails.Append (Instruction);
               Compile_Next;

            when Multiplicity =>
               if AST (Expression).Lower = 0 then
                  if AST (Expression).Upper = Natural'Last then
                     --  Zero or more

                     Last := Last + 1;
                     Instruction := Last;

                     declare
                        Ins_1 : Positive;

                     begin
                        Compile (AST (Expression).Item, Ins_1, Tails);
                        Connect_Tails (Tails, Instruction);

                        if AST (Expression).Greedy then
                           Program (Instruction) := (Split, Ins_1, 0);

                        else
                           Program (Instruction) := (Split, 0, Ins_1);
                        end if;

                        Tails.Clear;
                        Tails.Append (Instruction);
                        Compile_Next;
                     end;

                  elsif AST (Expression).Upper >= 1 then
                     --  N optional elements

                     declare
                        Ins_1   : Positive;
                        Ins_2   : Positive;
                        Tails_L : Vector;

                     begin
                        Instruction := Last + 1;
                        Tails.Clear;

                        for J in AST (Expression).Lower + 1 .. AST (Expression).Upper loop
                           Last := Last + 1;
                           Ins_1 := Last;
                           Connect_Tails (Tails_L, Ins_1);
                           Tails.Append (Ins_1);

                           Compile (AST (Expression).Item, Ins_2, Tails_L);

                           if AST (Expression).Greedy then
                              Program (Ins_1) := (Split, Ins_2, 0);

                           else
                              Program (Ins_1) := (Split, 0, Ins_2);
                           end if;
                        end loop;

                        Tails.Append (Tails_L);
                        Compile_Next;
                     end;

                  else
                     raise Program_Error;
                  end if;

               elsif AST (Expression).Lower = 1
                 and then AST (Expression).Upper = Natural'Last
               then
                  --  One or more

                  declare
                     Ins     : Positive;

                  begin
                     Compile (AST (Expression).Item, Instruction, Tails);

                     Last := Last + 1;
                     Ins := Last;

                     if AST (Expression).Greedy then
                        Program (Ins) := (Split, Instruction, 0);

                     else
                        Program (Ins) := (Split, 0, Instruction);
                     end if;

                     Connect_Tails (Tails, Ins);

                     Tails.Clear;
                     Tails.Append (Ins);
                     Compile_Next;
                  end;

               else
                  raise Program_Error;
               end if;

            when Subexpression =>
               Last := Last + 1;
               Instruction := Last;

               declare
                  Ins_1   : Positive;

               begin
                  if AST (Expression).Index = 0 then
                     Last_Subexpression := Last_Subexpression + 1;
                     AST (Expression).Index := Last_Subexpression;
                  end if;

                  Compile (AST (Expression).Subexpression, Ins_1, Tails);

                  Program (Instruction) :=
                    (Save, Ins_1, AST (Expression).Index, True);
                  Last := Last + 1;
                  Ins_1 := Last;
                  Program (Ins_1) :=
                    (Save, 0, AST (Expression).Index, False);
                  Connect_Tails (Tails, Ins_1);

                  Tails.Clear;
                  Tails.Append (Ins_1);
                  Compile_Next;
               end;

            when others =>
               raise Program_Error;
         end case;
      end Compile;

      -------------------
      -- Connect_Tails --
      -------------------

      procedure Connect_Tails (Tails : Vector; Instruction : Positive) is
         Position : Cursor := Tails.First;

      begin
         while Has_Element (Position) loop
            if Program (Element (Position)).Kind = Split then
               if Program (Element (Position)).Next = 0 then
                  Program (Element (Position)).Next := Instruction;

               else
                  Program (Element (Position)).Another := Instruction;
               end if;

            else
               Program (Element (Position)).Next := Instruction;
            end if;

            Next (Position);
         end loop;
      end Connect_Tails;

      Ins      : Positive;
      Ins_1    : Positive;
      Tails_1  : Vector;

   begin
      Last := Last + 1;
      Ins := Last;

      Compile (AST_Start, Ins_1, Tails_1);

      Program (Ins) := (Save, Ins_1, 0, True);

      Last := Last + 1;
      Program (Last) := (Save, Last + 1, 0, False);
      Connect_Tails (Tails_1, Last);

      Last := Last + 1;
      Program (Last) := (Kind => Match);

      return Program (1 .. Last);
   end Compile;

end Compiler;
