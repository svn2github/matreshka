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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  A literal integer is a specification of an integer value.
------------------------------------------------------------------------------
with AMF.UML.Literal_Specifications;

package AMF.UML.Literal_Integers is

   pragma Preelaborate;

   type UML_Literal_Integer is limited interface
     and AMF.UML.Literal_Specifications.UML_Literal_Specification;

   type UML_Literal_Integer_Access is
     access all UML_Literal_Integer'Class;
   for UML_Literal_Integer_Access'Storage_Size use 0;

   not overriding function Get_Value
    (Self : not null access constant UML_Literal_Integer)
       return Integer is abstract;
   --  Getter of LiteralInteger::value.
   --
   --  The specified Integer value.

   not overriding procedure Set_Value
    (Self : not null access UML_Literal_Integer;
     To   : Integer) is abstract;
   --  Setter of LiteralInteger::value.
   --
   --  The specified Integer value.

   not overriding function Integer_Value
    (Self : not null access constant UML_Literal_Integer)
       return Integer is abstract;
   --  Operation LiteralInteger::integerValue.
   --
   --  The query integerValue() gives the value.

   overriding function Is_Computable
    (Self : not null access constant UML_Literal_Integer)
       return Boolean is abstract;
   --  Operation LiteralInteger::isComputable.
   --
   --  The query isComputable() is redefined to be true.

end AMF.UML.Literal_Integers;
