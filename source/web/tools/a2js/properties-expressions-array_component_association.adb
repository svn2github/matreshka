------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Asis.Elements;
with Asis.Expressions;

package body Properties.Expressions.Array_Component_Association is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Association;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;
      List   : constant Asis.Element_List :=
        Asis.Expressions.Array_Component_Choices (Element);
      Value  : constant Asis.Expression :=
        Asis.Expressions.Component_Expression (Element);
      Down   : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property (Value, Name);
      Kind   : Asis.Definition_Kinds;
   begin
      for J in List'Range loop
         Kind := Asis.Elements.Definition_Kind (List (J));

         case Kind is
            when Asis.An_Others_Choice =>
               Result.Append ("default:");
            when Asis.A_Discrete_Range =>
               --  FIXME: Only empty range is supported
               return League.Strings.Empty_Universal_String;
            when others =>
               Result.Append ("case ");
               Result.Append (Engine.Text.Get_Property (List (J), Name));
               Result.Append (":");
         end case;
      end loop;

      Result.Append ("_result[_j]=");
      Result.Append (Down);
      Result.Append (";break;");

      return Result;
   end Code;

end Properties.Expressions.Array_Component_Association;
