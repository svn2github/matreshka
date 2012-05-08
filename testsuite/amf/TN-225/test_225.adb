------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                            Testsuite Component                           --
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
with League.Strings;

with AMF.Facility;
with AMF.Factories.UML_Factories;
with AMF.UML.Classes;
with AMF.UML.Elements.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages;
with AMF.UML.Properties.Collections;
with AMF.URI_Stores;

with AMF.Internals.Modules.UML_Module;
pragma Unreferenced (AMF.Internals.Modules.UML_Module);

procedure Test_225 is

   use type AMF.UML.Elements.UML_Element_Access;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   UML_URI          : constant League.Strings.Universal_String
     := +"http://www.omg.org/spec/UML/20100901";

   Store            : AMF.URI_Stores.URI_Store_Access;
   UML_Factory      : AMF.Factories.UML_Factories.UML_Factory_Access;
   The_Package      : AMF.UML.Packages.UML_Package_Access;
   The_Class        : AMF.UML.Classes.UML_Class_Access;
   The_Property     : AMF.UML.Properties.UML_Property_Access;
   Packaged_Element :
     AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   Owned_Attribute  :
     AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property;
   Owned_Element    : AMF.UML.Elements.Collections.Set_Of_UML_Element;

begin
   --  Initialize facility.

   AMF.Facility.Initialize;

   --  Create URI store.

   Store := AMF.Facility.Create_URI_Store (+"local:///test");

   --  Lookup for factory.

   UML_Factory :=
     AMF.Factories.UML_Factories.UML_Factory_Access
      (Store.Get_Factory (UML_URI));

   --  Create elements.

   The_Package   := UML_Factory.Create_Package;
   The_Class     := UML_Factory.Create_Class;
   The_Property  := UML_Factory.Create_Property;

   --  Link elements.

   Packaged_Element := The_Package.Get_Packaged_Element;
   Packaged_Element.Add (The_Class);

   Owned_Attribute := The_Class.Get_Owned_Attribute;
   Owned_Attribute.Add (The_Property);

   Owned_Element := The_Class.Get_Owned_Element;

   if Owned_Element.Length /= 1 then
      raise Program_Error;
   end if;

   if Owned_Element.Element (1)
        /= AMF.UML.Elements.UML_Element_Access (The_Property)
   then
      raise Program_Error;
   end if;
end Test_225;
