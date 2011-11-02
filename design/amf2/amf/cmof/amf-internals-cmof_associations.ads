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
with AMF.CMOF.Associations;
with AMF.CMOF.Classifiers.Collections;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Features.Collections;
with AMF.CMOF.Named_Elements.Collections;
with AMF.CMOF.Namespaces.Collections;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types.Collections;
with AMF.Internals.CMOF_Classifiers;
with AMF.String_Collections;

package AMF.Internals.CMOF_Associations is

   type CMOF_Association_Proxy is
     limited new AMF.Internals.CMOF_Classifiers.CMOF_Classifier_Proxy
       and AMF.CMOF.Associations.CMOF_Association
         with null record;

   --  XXX These subprograms are stubs

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Association_Proxy)
       return Boolean;

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Association_Proxy;
     To   : CMOF.Optional_CMOF_Visibility_Kind);

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Association_Proxy)
       return Optional_String;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Association_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Association_Proxy)
       return League.Strings.Universal_String;

   overriding procedure Set_Package
    (Self : not null access CMOF_Association_Proxy;
     To   : AMF.CMOF.Packages.CMOF_Package_Access);

   overriding function Conforms_To
    (Self : not null access constant CMOF_Association_Proxy;
     Other : AMF.CMOF.Types.CMOF_Type_Access)
       return Boolean;

   overriding function Get_Related_Element
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Imported_Member
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant CMOF_Association_Proxy;
     Element : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant CMOF_Association_Proxy;
     Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Exclude_Collisions
    (Self : not null access constant CMOF_Association_Proxy;
     Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant CMOF_Association_Proxy)
       return Boolean;

   overriding procedure Set_Is_Final_Specialization
    (Self : not null access CMOF_Association_Proxy;
     To   : Boolean);

   overriding function Conforms_To
    (Self : not null access constant CMOF_Association_Proxy;
     Other : AMF.CMOF.Classifiers.CMOF_Classifier_Access)
       return Boolean;

   overriding function All_Features
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Features.Collections.Set_Of_CMOF_Feature;

   overriding function General
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Parents
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Inherited_Member
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function All_Parents
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Inheritable_Members
    (Self : not null access constant CMOF_Association_Proxy;
     C : AMF.CMOF.Classifiers.CMOF_Classifier_Access)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function Has_Visibility_Of
    (Self : not null access constant CMOF_Association_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return Boolean;

   overriding function Inherit
    (Self : not null access constant CMOF_Association_Proxy;
     Inhs : AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function May_Specialize_Type
    (Self : not null access constant CMOF_Association_Proxy;
     C : AMF.CMOF.Classifiers.CMOF_Classifier_Access)
       return Boolean;

   overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Association_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Association_Proxy;
     To   : Boolean);

   overriding function Get_Owned_End
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property;

   overriding function Get_End_Type
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type;
   --  Getter of Association::endType.
   --
   --  References the classifiers that are used as types of the ends of the 
   --  association.

   overriding function Get_Member_End
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property;

   overriding function Get_Navigable_Owned_End
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
   --  Getter of Association::navigableOwnedEnd.
   --
   --  The navigable ends that are owned by the association itself.

   overriding function End_Type
    (Self : not null access constant CMOF_Association_Proxy)
       return AMF.CMOF.Types.Collections.Ordered_Set_Of_CMOF_Type;

end AMF.Internals.CMOF_Associations;
