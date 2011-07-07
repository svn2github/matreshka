------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Elements;
with AMF.Internals.Helpers;

package body Generator is

   use type AMF.Optional_String;
   use type AMF.Internals.AMF_Element;

   ----------------
   -- Has_Setter --
   ----------------

   function Has_Setter
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean is
   begin
      return not Attribute.Get_Is_Read_Only and not Attribute.Is_Multivalued;
   end Has_Setter;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : AMF.CMOF.Properties.CMOF_Property_Access)
       return Ada.Containers.Hash_Type is
   begin
      return
        Ada.Containers.Hash_Type
         (AMF.Internals.Helpers.To_Element
           (AMF.Elements.Element_Access (Item)));
   end Hash;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Natural) return Ada.Containers.Hash_Type is
   begin
      return Ada.Containers.Hash_Type (Item);
   end Hash;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Right : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Boolean is
   begin
      return Left.Get_Name < Right.Get_Name;
   end Less;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Right : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean is
   begin
      if Left.Get_Name /= Right.Get_Name then
         return Left.Get_Name < Right.Get_Name;

      else
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Left))
             < AMF.Internals.Helpers.To_Element
                (AMF.Elements.Element_Access (Right));
      end if;
   end Less;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Right : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return Boolean is
   begin
      if Left.Get_Name /= Right.Get_Name then
         return Left.Get_Name < Right.Get_Name;

      else
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Left))
             < AMF.Internals.Helpers.To_Element
                (AMF.Elements.Element_Access (Right));
      end if;
   end Less;

   --------------------
   -- Representation --
   --------------------

   function Representation
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Representation_Kinds is
   begin
      if Attribute.Is_Multivalued then
         if Attribute.Get_Is_Unique then
            if Attribute.Get_Is_Ordered then
               return Ordered_Set;

            else
               return Set;
            end if;

         else
            if Attribute.Get_Is_Ordered then
               return Sequence;

            else
               return Bag;
            end if;
         end if;

      elsif Attribute.Lower_Bound = 0 then
         return Holder;

      else
         return Value;
      end if;
   end Representation;

   ----------
   -- Sort --
   ----------

   function Sort
    (Set : CMOF_Element_Sets.Set)
       return CMOF_Named_Element_Ordered_Sets.Set
   is
      Result   : CMOF_Named_Element_Ordered_Sets.Set;
      Position : CMOF_Element_Sets.Cursor := Set.First;

   begin
      while CMOF_Element_Sets.Has_Element (Position) loop
         Result.Insert
            (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
              (CMOF_Element_Sets.Element (Position)));
         CMOF_Element_Sets.Next (Position);
      end loop;

      return Result;
   end Sort;

end Generator;
