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
--  A parameter is a specification of an argument used to pass information 
--  into or out of an invocation of a behavioral feature.
--  Parameters have support for streaming, exceptions, and parameter sets.
--  Parameters are allowed to be treated as connectable elements.
------------------------------------------------------------------------------
with AMF.UML.Connectable_Elements;
with AMF.UML.Multiplicity_Elements;
limited with AMF.UML.Operations;
limited with AMF.UML.Parameter_Sets;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Parameters is

   pragma Preelaborate;

   type UML_Parameter_Interface is limited interface
     and AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Interface
     and AMF.UML.Connectable_Elements.UML_Connectable_Element_Interface;

   type UML_Parameter is
     access all UML_Parameter_Interface'Class;

   type Set_Of_UML_Parameter is null record;
   type Ordered_Set_Of_UML_Parameter is null record;

   not overriding function Get_Default
    (Self : not null access constant UML_Parameter_Interface)
       return Optional_String is abstract;
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Parameter.

   not overriding procedure Set_Default
    (Self : not null access UML_Parameter_Interface;
     To   : Optional_String) is abstract;

   not overriding function Get_Default_Value
    (Self : not null access constant UML_Parameter_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  Specifies a ValueSpecification that represents a value to be used when 
   --  no argument is supplied for the Parameter.

   not overriding procedure Set_Default_Value
    (Self : not null access UML_Parameter_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

   not overriding function Get_Direction
    (Self : not null access constant UML_Parameter_Interface)
       return UML_Parameter_Direction_Kind is abstract;
   --  Indicates whether a parameter is being sent into or out of a behavioral 
   --  element.

   not overriding procedure Set_Direction
    (Self : not null access UML_Parameter_Interface;
     To   : UML_Parameter_Direction_Kind) is abstract;

   not overriding function Get_Effect
    (Self : not null access constant UML_Parameter_Interface)
       return Optional_UML_Parameter_Effect_Kind is abstract;
   --  Specifies the effect that the owner of the parameter has on values 
   --  passed in or out of the parameter.

   not overriding procedure Set_Effect
    (Self : not null access UML_Parameter_Interface;
     To   : Optional_UML_Parameter_Effect_Kind) is abstract;

   not overriding function Get_Is_Exception
    (Self : not null access constant UML_Parameter_Interface)
       return Boolean is abstract;
   --  Tells whether an output parameter may emit a value to the exclusion of 
   --  the other outputs.

   not overriding procedure Set_Is_Exception
    (Self : not null access UML_Parameter_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Stream
    (Self : not null access constant UML_Parameter_Interface)
       return Boolean is abstract;
   --  Tells whether an input parameter may accept values while its behavior 
   --  is executing, or whether an output parameter post values while the 
   --  behavior is executing.

   not overriding procedure Set_Is_Stream
    (Self : not null access UML_Parameter_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Operation
    (Self : not null access constant UML_Parameter_Interface)
       return AMF.UML.Operations.UML_Operation is abstract;
   --  References the Operation owning this parameter.

   not overriding procedure Set_Operation
    (Self : not null access UML_Parameter_Interface;
     To   : AMF.UML.Operations.UML_Operation) is abstract;

   not overriding function Get_Parameter_Set
    (Self : not null access constant UML_Parameter_Interface)
       return AMF.UML.Parameter_Sets.Set_Of_UML_Parameter_Set is abstract;
   --  The parameter sets containing the parameter. See ParameterSet.

end AMF.UML.Parameters;
