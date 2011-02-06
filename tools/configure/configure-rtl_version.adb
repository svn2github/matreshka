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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This procedure detects version of compiler and construct RTL's version
--  suffux.
------------------------------------------------------------------------------
with GNAT.Expect;
with GNAT.Regpat;

procedure Configure.RTL_Version is

   use Ada.Strings.Unbounded;
   use GNAT.Expect;
   use GNAT.Regpat;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   ------------------------
   -- Detect_RTL_Version --
   ------------------------

   procedure Detect_RTL_Version is
      GCC_Process : Process_Descriptor;
      Result      : Expect_Match;
      Matches     : Match_Array (0 .. 8);
      GCC_Version : Unbounded_String;
      Pro_Version : Unbounded_String;
      GPL_Version : Unbounded_String;

   begin
      Non_Blocking_Spawn
       (GCC_Process, "gcc", (1 => new String'("-v")), 4096, True);
      Expect
       (GCC_Process,
        Result,
        "gcc \S+ ([0-9]+)\.([0-9]+)\.([0-9]+).*(GNAT Pro ([0-9]+)\.([0-9]+)\.([0-9]+)w?|GNAT GPL ([0-9][0-9][0-9][0-9]))?",
         Matches);
      GCC_Version :=
        +Expect_Out (GCC_Process) (Matches (1).First .. Matches (1).Last)
          & '.'
          & Expect_Out (GCC_Process) (Matches (2).First .. Matches (2).Last)
          & '.'
          & Expect_Out (GCC_Process) (Matches (3).First .. Matches (3).Last);

      if Matches (4) /= No_Match then
         if Matches (8) /= No_Match then
            GPL_Version :=
              +Expect_Out (GCC_Process) (Matches (8).First .. Matches (8).Last);

         else
            Pro_Version :=
              +Expect_Out (GCC_Process) (Matches (5).First .. Matches (5).Last)
                & '.'
                & Expect_Out (GCC_Process) (Matches (6).First .. Matches (6).Last)
                & '.'
                & Expect_Out (GCC_Process) (Matches (7).First .. Matches (7).Last);
         end if;
      end if;

      Close (GCC_Process);

      if Pro_Version /= Null_Unbounded_String then
         Substitutions.Insert (RTL_Version_Suffix_Name, '-' & Pro_Version);

      elsif GPL_Version /= Null_Unbounded_String then
         Substitutions.Insert (RTL_Version_Suffix_Name, '-' & GPL_Version);

      else
         Substitutions.Insert (RTL_Version_Suffix_Name, '-' & GCC_Version);
      end if;
   end Detect_RTL_Version;

begin
   Detect_RTL_Version;
end Configure.RTL_Version;
