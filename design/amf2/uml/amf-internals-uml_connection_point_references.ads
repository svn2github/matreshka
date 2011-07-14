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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.UML_Elements;
with AMF.UML.Comments.Collections;
with AMF.UML.Connection_Point_References;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Pseudostates.Collections;
with AMF.UML.Regions;
with AMF.UML.State_Machines;
with AMF.UML.States;
with AMF.UML.String_Expressions;
with AMF.UML.Transitions.Collections;

package AMF.Internals.UML_Connection_Point_References is

   type UML_Connection_Point_Reference_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Connection_Point_References.UML_Connection_Point_Reference with null record;

   overriding function Get_Entry
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate;

   overriding function Get_Exit
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate;

   overriding function Get_State
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.States.UML_State_Access;

   overriding procedure Set_State
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.States.UML_State_Access);

   overriding function Get_Container
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Regions.UML_Region_Access;

   overriding procedure Set_Container
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.Regions.UML_Region_Access);

   overriding function Get_Incoming
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;

   overriding function Get_Outgoing
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Name
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Containing_State_Machine
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access;

   overriding function Incoming
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;

   overriding function Outgoing
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;

   overriding function All_Namespaces
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Connection_Point_Reference_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Namespace
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return League.Strings.Universal_String;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return Boolean;

end AMF.Internals.UML_Connection_Point_References;
