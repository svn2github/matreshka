------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.MOF_Attribute_Mappings;
with AMF.Internals.Tables.MOF_Constructors;
with AMF.Internals.Tables.MOF_Element_Table;
with AMF.Internals.Tables.MOF_Metamodel;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Factories.MOF_Factory is

   use AMF.Internals.Tables.MOF_Metamodel;

   --------------------
   -- Connect_Extent --
   --------------------

   overriding procedure Connect_Extent
    (Self    : not null access constant MOF_Factory;
     Element : AMF.Internals.AMF_Element;
     Extent  : AMF.Internals.AMF_Extent)
   is
      pragma Unreferenced (Self);

   begin
      AMF.Internals.Tables.MOF_Element_Table.Table (Element).Extent := Extent;
   end Connect_Extent;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   overriding procedure Connect_Link_End
    (Self     : not null access constant MOF_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link;
     Other    : AMF.Internals.AMF_Element)
   is
      pragma Unreferenced (Self);

      use AMF.Internals.Tables;
      use AMF.Internals.Tables.UML_Metamodel;
      use AMF.Internals.Tables.MOF_Attribute_Mappings;

   begin
      --  Properties which comes from UML metamodel.

      if Property in MB_UML .. ML_UML then
         declare
            PO : constant AMF.Internals.CMOF_Element := Property - MB_UML;

         begin
            if PO in UML_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (MOF_Element_Table.Table (Element).Member (0).Collection
                   + UML_Collection_Offset
                      (MOF_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in UML_Member_Offset'Range (2)
              and then UML_Member_Offset
                        (MOF_Element_Table.Table (Element).Kind, PO) /= 0
            then
               MOF_Element_Table.Table (Element).Member
                (UML_Member_Offset
                  (MOF_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (MOF_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;

      elsif Property in MB_MOF .. ML_MOF then
         declare
            PO : constant AMF.Internals.CMOF_Element := Property - MB_MOF;

         begin
            if PO in MOF_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (MOF_Element_Table.Table (Element).Member (0).Collection
                   + MOF_Collection_Offset
                      (MOF_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in MOF_Member_Offset'Range (2)
              and then MOF_Member_Offset
                        (MOF_Element_Table.Table (Element).Kind, PO) /= 0
            then
               MOF_Element_Table.Table (Element).Member
                (MOF_Member_Offset
                  (MOF_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (MOF_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;
      end if;
   end Connect_Link_End;

   -----------------------
   -- Convert_To_String --
   -----------------------

   function Convert_To_String
    (Self      : not null access MOF_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String is
   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access MOF_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Meta_Class));
      Element : AMF.Internals.MOF_Element;

   begin
      --  Create corresponding element.

      if MC = MC_MOF_Tag then
         Element := AMF.Internals.Tables.MOF_Constructors.Create_MOF_Tag;

      else
         raise Program_Error with CMOF_Element'Image (MC);
      end if;

      return Self.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Self      : not null access MOF_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder is
   begin
      raise Program_Error;
      return League.Holders.Empty_Holder;
   end Create_From_String;

   -------------------
   -- Get_Metamodel --
   -------------------

   overriding function Get_Metamodel
    (Self : not null access constant MOF_Factory)
       return AMF.Internals.AMF_Metamodel
   is
      pragma Unreferenced (Self);

   begin
      return MOF_Metamodel;
   end Get_Metamodel;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant MOF_Factory)
       return not null AMF.CMOF.Packages.CMOF_Package_Access
   is
      pragma Unreferenced (Self);

   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element (MM_MOF_MOF));
   end Get_Package;

   ----------------
   -- To_Element --
   ----------------

   overriding function To_Element
    (Self     : not null access constant MOF_Factory;
     Element  : AMF.Internals.AMF_Element) return AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

   begin
      return AMF.Internals.Tables.MOF_Element_Table.Table (Element).Proxy;
   end To_Element;

end AMF.Internals.Factories.MOF_Factory;
