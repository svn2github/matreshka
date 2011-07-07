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
with Interfaces;

with AMF.Internals;

package CMOF is

   pragma Preelaborate;

   type CMOF_Parameter_Direction_Kind is
    (In_Direction,
     In_Out_Direction,
     Out_Direction,
     Return_Direction);

   type CMOF_Visibility_Kind is
    (Public_Visibility,
     Private_Visibility,
     Protected_Visibility,
     Package_Visibility);

   subtype Collection_Of_CMOF_Element is
     AMF.Internals.AMF_Collection_Of_Element;

   subtype Set_Of_CMOF_Class is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Property is Collection_Of_CMOF_Element;
   subtype Ordered_Set_Of_CMOF_Property is Collection_Of_CMOF_Element;

   type Collection_Of_CMOF_String is private;

   subtype CMOF_Element is AMF.Internals.CMOF_Element;
   Null_CMOF_Element : constant CMOF_Element := 0;

   subtype Cmof_Association is Cmof_Element;
   subtype Cmof_Class is Cmof_Element;
   subtype CMOF_Data_Type is Cmof_Element;
   subtype CMOF_Multiplicity_Element is Cmof_Element;
   subtype CMOF_Named_Element is Cmof_Element;
   subtype CMOF_Package is Cmof_Element;
   subtype CMOF_Property is Cmof_Element;
   subtype CMOF_Type is Cmof_Element;
   subtype CMOF_Typed_Element is Cmof_Element;

   subtype CMOF_Extent is AMF.Internals.AMF_Extent;
   CMOF_Metamodel_Extent : constant CMOF_Extent := 1;

private

   type Collection_Of_CMOF_String is
     new Interfaces.Integer_32 range 0 .. Interfaces.Integer_32'Last;

end Cmof;
