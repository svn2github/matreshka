------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Hashed_Sets;
with Ada.Containers.Ordered_Maps;
with Ada.Containers.Ordered_Sets;

with League.Strings;

with AMF.CMOF.Classes;
with AMF.CMOF.Elements.Hash;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Parameters;
with AMF.CMOF.Properties;

package Generator is

   function Less
    (Left  : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Right : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access) return Boolean;

   package CMOF_Named_Element_Ordered_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access,
           Less,
           AMF.CMOF.Named_Elements."=");

   package CMOF_Element_Number_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Elements.CMOF_Element_Access,
           Positive,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=");

   package CMOF_Element_Sets is
     new Ada.Containers.Hashed_Sets
          (AMF.CMOF.Elements.CMOF_Element_Access,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=",
           AMF.CMOF.Elements."=");

   function Sort
    (Set : CMOF_Element_Sets.Set)
       return CMOF_Named_Element_Ordered_Sets.Set;

   -------------------------------------------
   --  Second generation of internal data.  --
   -------------------------------------------

--   function Hash
--    (Item : not null access AMF.CMOF.Elements.CMOF_Element'Class)
--       return Ada.Containers.Hash_Type;

--   function Hash
--    (Item : not null AMF.CMOF.Classes.CMOF_Class_Access)
--       return Ada.Containers.Hash_Type;

   function Hash
    (Item : AMF.CMOF.Properties.CMOF_Property_Access)
       return Ada.Containers.Hash_Type;

   function Hash (Item : Natural) return Ada.Containers.Hash_Type;

   function Less
    (Left  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Right : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right, if they are
   --  equal returns True when internal identifier of Left is less than
   --  internals identifier of Right.

   function Less
    (Left  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Right : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right.

   package CMOF_Property_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Properties.CMOF_Property_Access,
           Less,
           AMF.CMOF.Properties."=");

   package CMOF_Property_Natural_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Properties.CMOF_Property_Access,
           Natural,
           Hash,
           AMF.CMOF.Properties."=");

   package Natural_CMOF_Property_Maps is
     new Ada.Containers.Hashed_Maps
          (Natural,
           AMF.CMOF.Properties.CMOF_Property_Access,
           Hash,
           "=",
           AMF.CMOF.Properties."=");

   type Class_Information is record
      Class            : AMF.CMOF.Classes.CMOF_Class_Access;
      All_Attributes   : CMOF_Property_Sets.Set;
      --  Set of all attributes of the class.
      Slot             : CMOF_Property_Natural_Maps.Map;
      Slot_Index       : Natural_CMOF_Property_Maps.Map;
      Collection       : CMOF_Property_Natural_Maps.Map;
      Collection_Index : Natural_CMOF_Property_Maps.Map;
      --  Mapping of attributes into slots and collections. Index to
      --  slot/collection mapping map to first declaration of the attribute.
      --  Attributes which redefine this attribute is out of the mapping, but
      --  present in slot/collection to index mapping and share the same index.
   end record;
   --  Class information record contains extracted information for each class.

   type Class_Information_Access is access all Class_Information;

   package Class_Information_Maps is
     new Ada.Containers.Ordered_Maps
          (AMF.CMOF.Classes.CMOF_Class_Access,
           Class_Information_Access,
           Less);

--   type Attribute_Group is record
--      Properties : CMOF_Property_Sets.Set;
----      Classes    : CMOF_Class_Sets.Set;
--   end record;
--
--   type Attribute_Group_Access is access all Attribute_Group;
--
--   function Less
--    (Left  : Attribute_Group_Access;
--     Right : Attribute_Group_Access) return Boolean;
--
--   package Attribute_Group_Sets is
--     new Ada.Containers.Ordered_Sets (Attribute_Group_Access, Less);
--
----   package CMOF_Property_Attribute_Homograph_Maps is
----     new Ada.Containers.

   ------------------------
   -- Global information --
   ------------------------

   Class_Info : Class_Information_Maps.Map;
   --  Mapping from CMOF::Class to class information.

--   Attribute_Info : Property_
--   Attribute_Groups : Attribute_Group_Sets.Set;

   Metamodel_Name : League.Strings.Universal_String;
   --  Name of the generated metamodel.

   ---------------
   -- Utilities --
   ---------------

   type Representation_Kinds is
    (Value, Holder, Set, Ordered_Set, Bag, Sequence);

   function Representation
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Representation_Kinds;

   function Representation
    (Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access)
       return Representation_Kinds;

   function Has_Setter
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when specified attribute has setter.

   function Use_Member_Slot
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when member slot is used for this attribute.

end Generator;
