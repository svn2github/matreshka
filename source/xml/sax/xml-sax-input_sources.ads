------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
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
with League.Strings;
with Matreshka.Internals.Strings;

package XML.SAX.Input_Sources is

   pragma Preelaborate;

   type SAX_Input_Source is limited interface;

   type SAX_Input_Source_Access is access all SAX_Input_Source'Class;

--   not overriding procedure Set_String
--    (Self   : in out SAX_Input_Source;
--     String : League.Strings.Universal_String) is abstract;
--
--   procedure Set_Stream
--    (Self   : in out SAX_Input_Source;
--     Stream : not null access Ada.Streams.Root_Stream_Type'Class);

--   not overriding function Encoding
--    (Self : SAX_Input_Source) return League.Strings.Universal_String;

   not overriding function Public_Id
    (Self : SAX_Input_Source) return League.Strings.Universal_String
       is abstract;
   --  Returns public identifier for the input source, or an empty string if
   --  non was supplied.

   not overriding function System_Id
    (Self : SAX_Input_Source) return League.Strings.Universal_String
       is abstract;
   --  Returns system identifier for the input source, or an empty string if
   --  non was supplied.

--   not overriding procedure Set_Encoding
--    (Self     : in out SAX_Input_Source;
--     Encoding : League.Strings.Universal_String);

--   not overriding procedure Set_Public_Id
--    (Self : in out SAX_Input_Source;
--     Id   : League.Strings.Universal_String) is abstract;

   not overriding procedure Set_System_Id
    (Self : in out SAX_Input_Source;
     Id   : League.Strings.Universal_String) is abstract;
   --  Sets system identifier of the entity.

   not overriding procedure Set_Version
    (Self    : in out SAX_Input_Source;
     Version : League.Strings.Universal_String) is abstract;
   --  Sets XML version for the entity.

   not overriding procedure Next
    (Self        : in out SAX_Input_Source;
     Buffer      : in out
       not null Matreshka.Internals.Strings.Shared_String_Access;
     End_Of_Data : out Boolean) is abstract;

   not overriding procedure Reset
    (Self     : in out SAX_Input_Source;
     Version  : League.Strings.Universal_String;
     Encoding : League.Strings.Universal_String;
     Rescan   : out Boolean;
     Success  : out Boolean) is abstract;
   --  Resets used version and encoding to specified. Sets Rescan to True when
   --  encoding is changed and scanning must be restarted from the beginning of
   --  the entity. Sets Success to False when error is detected.

end XML.SAX.Input_Sources;
