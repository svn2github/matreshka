------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides symbol table to store frequently used strings,
--  allocate identifier for them and reduce number of memory allocations by
--  reusing shared strings.
------------------------------------------------------------------------------
with League.Strings;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.XML.Symbol_Tables is

   pragma Preelaborate;

   type Symbol_Identifier is private;
   No_Symbol : constant Symbol_Identifier;

   type Symbol_Table is limited private;

   procedure Insert
    (Self           : in out Symbol_Table;
     String         :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Start_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     Start_Index    : Positive;
     End_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     End_Index      : Positive;
     Identifier     : out Symbol_Identifier);
   --  Lookup symbol table for name and returns its identifier if present,
   --  otherwise add new name and returns allocated identifier.

   function Lookup
    (Self           : Symbol_Table;
     String         :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Start_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     Start_Index    : Positive;
     End_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     End_Index      : Positive) return Symbol_Identifier;
   --  Lookup symbol table for name and returns its identifier. Returns
   --  No_Symbol when there is no name in the table.

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;
   --  Returns name of the identifier. Reference counter is not incremented.

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return League.Strings.Universal_String;
   --  Returns name of the identifier.

   procedure Initialize (Self : in out Symbol_Table);
   --  Initialize internal structures and register predefined general entities.

   procedure Finalize (Self : in out Symbol_Table);
   --  Finalize internal structures.

private

   type Symbol_Identifier is mod 2 ** 32;
   No_Symbol : constant Symbol_Identifier := 0;

   type Symbol_Record is record
      String              : Matreshka.Internals.Strings.Shared_String_Access;
      --  Name of the symbol.

      Is_Parameter_Entity : Boolean := False;
      Is_General_Entity   : Boolean := False;
      Is_Unparsed_Entity  : Boolean := False;
      Is_External_Entity  : Boolean := False;
      PE_Replacement_Text : Matreshka.Internals.Strings.Shared_String_Access;
      GE_Replacement_Text : Matreshka.Internals.Strings.Shared_String_Access;
   end record;

   type Symbol_Record_Array is
     array (Symbol_Identifier range <>) of Symbol_Record;
   type Symbol_Record_Array_Access is access all Symbol_Record_Array;

   type Symbol_Table is record
      Table : Symbol_Record_Array_Access;
      Last  : Symbol_Identifier;
   end record;

end Matreshka.Internals.XML.Symbol_Tables;
