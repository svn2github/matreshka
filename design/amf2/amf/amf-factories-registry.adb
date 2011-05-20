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
--  Registry of factories for all known meta models.
------------------------------------------------------------------------------
with Ada.Containers.Hashed_Maps;

package body AMF.Factories.Registry is

   function Hash
    (Item : League.Strings.Universal_String) return Ada.Containers.hash_Type;

   package Factory_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           AMF_Factory_Access,
           Hash,
           League.Strings."=");

   Map : Factory_Maps.Map;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : League.Strings.Universal_String) return Ada.Containers.hash_Type is
   begin
      return Ada.Containers.Hash_Type (Item.Hash);
   end Hash;

   --------------
   -- Register --
   --------------

   procedure Register
    (URI     : League.Strings.Universal_String;
     Factory : not null AMF_Factory_Access) is
   begin
      Map.Insert (URI, Factory);
   end Register;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (URI : League.Strings.Universal_String)
       return not null AMF_Factory_Access is
   begin
      return Map.Element (URI);
   end Resolve;

end AMF.Factories.Registry;