------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Decoder and encoder of ISO-8859-1.
------------------------------------------------------------------------------

private package Matreshka.Internals.Text_Codecs.ISO88591 is

   pragma Preelaborate;

   ----------------------
   -- ISO88591_Decoder --
   ----------------------

   type ISO88591_Decoder is new Abstract_Decoder with private;

   overriding function Is_Error (Self : ISO88591_Decoder) return Boolean;

   overriding function Is_Mailformed (Self : ISO88591_Decoder) return Boolean;

   overriding procedure Decode_Append
    (Self   : in out ISO88591_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     String : in out Matreshka.Internals.Strings.Shared_String_Access);

   function Decoder (Mode : Decoder_Mode) return Abstract_Decoder'Class;

   ----------------------
   -- ISO88591_Encoder --
   ----------------------

   type ISO88591_Encoder is new Abstract_Encoder with private;

   overriding procedure Encode
    (Self   : in out ISO88591_Encoder;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     Buffer : out MISEV.Shared_Stream_Element_Vector_Access);

   function Encoder return Abstract_Encoder'Class;

private

   type ISO88591_Decoder is new Abstract_Decoder with null record;

   type ISO88591_Encoder is new Abstract_Encoder with null record;

end Matreshka.Internals.Text_Codecs.ISO88591;
