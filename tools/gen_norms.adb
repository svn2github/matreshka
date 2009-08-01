------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Text_IO;

with Matreshka.Internals.Ucd;
with Matreshka.Internals.Unicode;
with Ucd_Data;
with Utils;

procedure Gen_Norms (Source_Directory : String) is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;
   use Ucd_Data;
   use Utils;

   Generated_Name : constant String := "matreshka-internals-ucd-norms.ads";

   procedure Append_Mapping
    (Mapping : Code_Point_Sequence;
     First   : out Sequence_Index;
     Last    : out Sequence_Count);

   type Group_Info is record
      Share : First_Stage_Index;
      Count : Natural;
   end record;

   Decomposition_Data      : Code_Point_Sequence (Sequence_Index);
   Decomposition_Data_Last : Sequence_Count := 0;

   Decomposition : array (Code_Point) of Decomposition_Mapping
     := (others => (others => (0, 0)));
   Groups        : array (First_Stage_Index) of Group_Info
     := (others => (0, 0));
   File          : Ada.Text_IO.File_Type;
   Generated     : array (First_Stage_Index) of Boolean := (others => False);

   --------------------
   -- Append_Mapping --
   --------------------

   procedure Append_Mapping
    (Mapping : Code_Point_Sequence;
     First   : out Sequence_Index;
     Last    : out Sequence_Count)
   is
   begin
      if Mapping'Length = 0 then
         First := 1;
         Last  := 0;
      end if;

      for J in 1 .. Decomposition_Data_Last - Mapping'Length + 1 loop
         if Decomposition_Data (J .. J + Mapping'Length - 1) = Mapping then
            First := J;
            Last  := J + Mapping'Length - 1;

            return;
         end if;
      end loop;

      First := Decomposition_Data_Last + 1;

      for J in Mapping'Range loop
         Decomposition_Data_Last := Decomposition_Data_Last + 1;
         Decomposition_Data (Decomposition_Data_Last) := Mapping (J);
      end loop;

      Last := Decomposition_Data_Last;
   end Append_Mapping;

   ---------
   -- Put --
   ---------

   procedure Put
    (File : Ada.Text_IO.File_Type; Item : Decomposition_Mapping)
   is
   begin
      Ada.Text_IO.Put
       (File,
        "(("
          & Sequence_Count_Image (Item (Canonical).First)
          & ", "
          & Sequence_Count_Image (Item (Canonical).Last)
          & "), ("
          & Sequence_Count_Image (Item (Compatibility).First)
          & ", "
          & Sequence_Count_Image (Item (Compatibility).Last)
          & "))");
   end Put;

begin
   Ada.Text_IO.Put_Line ("   ... " & Generated_Name);

   --  Construct normalization information.

   for J in Code_Point loop
      if Core (J).DT /= None then
         Append_Mapping
          (Norms (J) (Compatibility).all,
           Decomposition (J) (Compatibility).First,
           Decomposition (J) (Compatibility).Last);

         if Core (J).DT = Canonical then
            Append_Mapping
             (Norms (J) (Canonical).all,
              Decomposition (J) (Canonical).First,
              Decomposition (J) (Canonical).Last);
         end if;
      end if;
   end loop;

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Decomposition
             (Code_Unit_32 (K) * 256 .. Code_Unit_32 (K) * 256 + 255)
              = Decomposition
                 (Code_Unit_32 (J) * 256 .. Code_Unit_32 (J) * 256 + 255)
         then
            Groups (J).Share := K;
            Groups (K).Count := Groups (K).Count + 1;

            exit;
         end if;
      end loop;
   end loop;

   --  Generate source code.

   Ada.Text_IO.Create
    (File, Ada.Text_IO.Out_File, Source_Directory & '/' & Generated_Name);
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                            Matreshka Project                        "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--         Localization, Internationalization, Globalization for Ada   "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                        Runtime Library Component                    "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                 "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Matreshka is free software;  you can  redistribute it  and/or modify"
       & "  it --");
   Ada.Text_IO.Put_Line
    (File,
     "-- under terms of the  GNU General Public License as published  by the "
       & "Free --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Software  Foundation;  either version 2,  or (at your option)  any l"
       & "ater --");
   Ada.Text_IO.Put_Line
    (File,
     "-- version.  Matreshka  is distributed in the hope that it will be  use"
       & "ful, --");
   Ada.Text_IO.Put_Line
    (File,
     "-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty"
       & "  of --");
   Ada.Text_IO.Put_Line
    (File,
     "-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Gen"
       & "eral --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Public License for more details.  You should have received a copy of"
       & " the --");
   Ada.Text_IO.Put_Line
    (File,
     "-- GNU General Public License distributed with Matreshka; see file COPY"
       & "ING. --");
   Ada.Text_IO.Put_Line
    (File,
     "-- If not, write  to  the  Free Software Foundation,  51  Franklin  Str"
       & "eet, --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Fifth Floor, Boston, MA 02110-1301, USA.                            "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-- As a special exception,  if other files  instantiate  generics from "
       & "this --");
   Ada.Text_IO.Put_Line
    (File,
     "-- unit, or you link  this unit with other files  to produce an executa"
       & "ble, --");
   Ada.Text_IO.Put_Line
    (File,
     "-- this  unit  does not  by itself cause  the resulting  executable  to"
       & "  be --");
   Ada.Text_IO.Put_Line
    (File,
     "-- covered  by the  GNU  General  Public  License.  This exception does"
       & " not --");
   Ada.Text_IO.Put_Line
    (File,
     "-- however invalidate  any other reasons why  the executable file  migh"
       & "t be --");
   Ada.Text_IO.Put_Line
    (File,
     "-- covered by the  GNU Public License.                                 "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    (File,
     "--  This package is generated automatically");
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "package Matreshka.Internals.Ucd.Norms is");
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "   pragma Preelaborate;");

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line
    (File, "   Decomposition_Data : aliased constant Code_Point_Sequence");

   for J in 1 .. Decomposition_Data_Last loop
      if J = 1 then
         Ada.Text_IO.Put (File, "     := (");

      elsif (J - 1) mod 5 = 0 then
         Ada.Text_IO.Put_Line (File, ",");
         Ada.Text_IO.Put (File, "         ");

      else
         Ada.Text_IO.Put (File, ", ");
      end if;

      Ada.Text_IO.Put (File, Code_Point_Ada_Image (Decomposition_Data (J)));
   end loop;

   Ada.Text_IO.Put_Line (File, ");");

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default    : Decomposition_Mapping;
            Current    : Decomposition_Mapping;
            First      : Second_Stage_Index;
            Last       : Second_Stage_Index;
            First_Code : Code_Point;
            Last_Code  : Code_Point;

         begin
            --  Looking for most useful set of values, it will be used for
            --  others selector for generate more compact code.

            declare
               type Value_Count_Pair is record
                  V : Decomposition_Mapping;
                  C : Natural;
               end record;

               Counts  : array (Positive range 1 .. 256) of Value_Count_Pair
                 := (others => <>);
               Last    : Natural  := 0;
               Maximum : Natural  := 0;

            begin
               for K in Second_Stage_Index loop
                  declare
                     C : constant Code_Point
                       := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);
                     R : Decomposition_Mapping renames Decomposition (C);
                     F : Boolean := False;

                  begin
                     --  Go throught known values and try to find the same
                     --  value.

                     for L in 1 .. Last loop
                        if Counts (L).V = R then
                           F := True;
                           Counts (L).C := Counts (L).C + 1;

                           if Maximum < Counts (L).C then
                              Maximum := Counts (L).C;
                              Default := Counts (L).V;
                           end if;

                           exit;
                        end if;
                     end loop;

                     --  If value is not found, then add it to the end of list.

                     if not F then
                        Last := Last + 1;
                        Counts (Last) := (R, 1);
                     end if;
                  end;
               end loop;
            end;

            Ada.Text_IO.New_Line (File);
            Ada.Text_IO.Put_Line
             (File,
              "   Group_" & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Decomposition_Mapping_Second_Stage");
            Ada.Text_IO.Put
             (File, "     := (");

            for K in Second_Stage_Index loop
               declare
                  Code : constant Code_Point
                    := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);

               begin
                  if K = Second_Stage_Index'First then
                     Current    := Decomposition (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := Code;

                  elsif Decomposition (Code) = Current then
                     Last      := K;
                     Last_Code := Code;

                  else
                     if Current /= Default then
                        if First /= Last then
                           Ada.Text_IO.Put_Line
                            (File,
                             "16#"
                               & Second_Stage_Image (First)
                               & "# .. 16#"
                               & Second_Stage_Image (Last)
                               & "# =>  --  "
                               & Code_Point_Image (First_Code)
                               & " .. "
                               & Code_Point_Image (Last_Code));
                           Ada.Text_IO.Set_Col (File, 11);
                           Put (File, Current);
                           Ada.Text_IO.Put (File, ',');

                        else
                           Ada.Text_IO.Put_Line
                            (File, "16#"
                               & Second_Stage_Image (First)
                               & "#           =>  --  "
                               & Code_Point_Image (First_Code));
                           Ada.Text_IO.Set_Col (File, 11);
                           Put (File, Current);
                           Ada.Text_IO.Put (File, ',');
                        end if;

                        Ada.Text_IO.New_Line (File);
                        Ada.Text_IO.Set_Col (File, 10);
                     end if;

                     Current    := Decomposition (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := First_Code;
                  end if;
               end;
            end loop;

            Ada.Text_IO.Put_Line (File, "others           =>");
            Ada.Text_IO.Set_Col (File, 11);
            Put (File, Default);
            Ada.Text_IO.Put_Line (File, ");");

            Generated (J) := True;
         end;
      end if;
   end loop;

   declare
      Default : First_Stage_Index := 0;
      Maximum : Natural           := 0;
      N       : Natural           := 0;

   begin
      for J in Groups'Range loop
         if Maximum < Groups (J).Count then
            Maximum := Groups (J).Count;
            Default := J;
         end if;
      end loop;

      Ada.Text_IO.New_Line (File);
      Ada.Text_IO.Put_Line
       (File,
        "   Mapping : aliased constant Decomposition_Mapping_First_Stage");
      Ada.Text_IO.Put (File, "     := (");

      for J in Groups'Range loop
         if Groups (J).Share /= Default then
            Ada.Text_IO.Put
             (File,
              "16#"
                & First_Stage_Image (J)
                & "# => Group_"
                & First_Stage_Image (Groups (J).Share)
                & "'Access,");

            case N mod 2 is
               when 0 =>
                  Ada.Text_IO.Set_Col (File, 41);

               when 1 =>
                  Ada.Text_IO.New_Line (File);
                  Ada.Text_IO.Set_Col (File, 10);

               when others =>
                  raise Program_Error;
            end case;

            N := N + 1;
         end if;
      end loop;

      Ada.Text_IO.Put_Line
       (File,
        "others   => Group_" & First_Stage_Image (Default) & "'Access);");
   end;

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "end Matreshka.Internals.Ucd.Norms;");
end Gen_Norms;
