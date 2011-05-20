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
--  Protocol state machines can be redefined into more specific protocol state 
--  machines, or into behavioral state machines. Protocol conformance declares 
--  that the specific protocol state machine specifies a protocol that 
--  conforms to the general state machine one, or that the specific behavioral 
--  state machine abide by the protocol of the general protocol state machine.
------------------------------------------------------------------------------
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Protocol_State_Machines;

package AMF.UML.Protocol_Conformances is

   pragma Preelaborate;

   type UML_Protocol_Conformance_Interface is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship_Interface;

   type UML_Protocol_Conformance is
     access all UML_Protocol_Conformance_Interface'Class;

   type Set_Of_UML_Protocol_Conformance is null record;
   type Ordered_Set_Of_UML_Protocol_Conformance is null record;

   not overriding function Get_General_Machine
    (Self : not null access constant UML_Protocol_Conformance_Interface)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine is abstract;
   --  Specifies the protocol state machine to which the specific state 
   --  machine conforms.

   not overriding procedure Set_General_Machine
    (Self : not null access UML_Protocol_Conformance_Interface;
     To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine) is abstract;

   not overriding function Get_Specific_Machine
    (Self : not null access constant UML_Protocol_Conformance_Interface)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine is abstract;
   --  Specifies the state machine which conforms to the general state machine.

   not overriding procedure Set_Specific_Machine
    (Self : not null access UML_Protocol_Conformance_Interface;
     To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine) is abstract;

end AMF.UML.Protocol_Conformances;