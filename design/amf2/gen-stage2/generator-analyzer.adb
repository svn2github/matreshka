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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Packages;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Redefinable_Elements.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Extents.Collections;
with AMF.Facility;

with Generator.Arguments;
with Generator.Attribute_Mapping;
with Generator.Names;

package body Generator.Analyzer is

   procedure Classify_Elements
    (Info     : not null Metamodel_Information_Access;
     Elements : AMF.Elements.Collections.Set_Of_Element);
   --  Classify elements of the metamodel by classes and fill corresponding
   --  members of information.

   procedure Compute_All_Properties
    (Extents : in out AMF.Extents.Collections.Set_Of_Extent;
     Class   : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Computes all attributes of the class, assigns slot and collections.

   procedure Compute_Metamodel_Name
    (Info   : not null Metamodel_Information_Access;
     Extent : not null AMF.Extents.Extent_Access);
   --  Compute metamodel names for each element.

   procedure Assign_Element_Numbers
    (Info   : not null Metamodel_Information_Access;
     Extent : not null AMF.Extents.Extent_Access);
   --  Assigns numbers to each element and to each string.

   procedure Assign_Member_Numbers
    (Info   : not null Metamodel_Information_Access;
     Extent : not null AMF.Extents.Extent_Access);
   --  Assign member numbers for attributes of elements.

   -------------------
   -- Analyze_Model --
   -------------------

   procedure Analyze_Model
    (Extent : not null AMF.URI_Stores.URI_Store_Access)
   is
      Elements : constant AMF.Elements.Collections.Set_Of_Element
        := Extent.Elements;
      Info     : Metamodel_Information_Access := Metamodel_Info;

   begin
      Metamodel_Infos.Insert (AMF.Extents.Extent_Access (Extent), Info);

      Classify_Elements (Info, Elements);

      --  Compute complete set of properties for each class.

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all in AMF.CMOF.Classes.CMOF_Class'Class then
            declare
               Class : AMF.CMOF.Classes.CMOF_Class_Access
                 := AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J));

            begin
               Compute_All_Properties (Used_Extents, Class);
            end;
         end if;
      end loop;

      --  Compute name of metamodel.

      Compute_Metamodel_Name (Info, AMF.Extents.Extent_Access (Extent));

      --  Looking up for root package of the metamodel.

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all
              in AMF.CMOF.Packages.CMOF_Package'Class
         then
            Metamodel_Info.Root_Package :=
              AMF.CMOF.Packages.CMOF_Package_Access (Elements.Element (J));

            exit;
         end if;
      end loop;

      --  Assign numbers for metamodel's elements.

      Assign_Element_Numbers (Info, AMF.Extents.Extent_Access (Extent));

      --  Assign member's numbers for attributes.

      Assign_Member_Numbers (Info, AMF.Extents.Extent_Access (Extent));

      --  Process all used extents.

      declare
         Position : AMF.Extents.Collections.Extent_Sets.Cursor
           := Used_Extents.First;
         Extent   : AMF.Extents.Extent_Access;

      begin
         while AMF.Extents.Collections.Extent_Sets.Has_Element (Position) loop
            Extent := AMF.Extents.Collections.Extent_Sets.Element (Position);

            if not Metamodel_Infos.Contains (Extent) then
               Info := new Metamodel_Information;
               Metamodel_Infos.Insert (Extent, Info);

               Compute_Metamodel_Name (Info, Extent);
               Classify_Elements (Info, Extent.Elements);
               Assign_Element_Numbers (Info, Extent);
            end if;

            AMF.Extents.Collections.Extent_Sets.Next (Position);
         end loop;
      end;
   end Analyze_Model;

   ----------------------------
   -- Assign_Element_Numbers --
   ----------------------------

   procedure Assign_Element_Numbers
    (Info   : not null Metamodel_Information_Access;
     Extent : not null AMF.Extents.Extent_Access)
   is
      procedure Assign_Ordered_Set
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Assign_Collection_Of_Element_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Assign_Owned_By_Class_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Assign_Set (Position : CMOF_Element_Sets.Cursor);

      Elements : AMF.Elements.Collections.Set_Of_Element := Extent.Elements;
      Last     : Natural := 0;

      ------------------------
      -- Assign_Ordered_Set --
      ------------------------

      procedure Assign_Ordered_Set
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant AMF.CMOF.Elements.CMOF_Element_Access
           := AMF.CMOF.Elements.CMOF_Element_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         if not Info.Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Info.Element_Numbers.Insert (Element, Last);
            Info.Number_Element.Insert (Last, Element);
         end if;
      end Assign_Ordered_Set;

      -------------------------------------------
      -- Assign_Collection_Of_Element_Property --
      -------------------------------------------

      procedure Assign_Collection_Of_Element_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class          : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes     : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;
         Properties     : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Attribute_Type := Attributes.Element (J).Get_Type;

            if not Use_Member_Slot (Attributes.Element (J))
              and Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
            then
               Properties.Insert
                (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
                  (Attributes.Element (J)));
            end if;
         end loop;

         Properties.Iterate (Assign_Ordered_Set'Access);
      end Assign_Collection_Of_Element_Property;

      ------------------------------------
      -- Assign_Owned_By_Class_Property --
      ------------------------------------

      procedure Assign_Owned_By_Class_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class      : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Properties.Insert
             (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
               (Attributes.Element (J)));
         end loop;

         Properties.Iterate (Assign_Ordered_Set'Access);
      end Assign_Owned_By_Class_Property;

      ----------------
      -- Assign_Set --
      ----------------

      procedure Assign_Set (Position : CMOF_Element_Sets.Cursor) is
         Element : constant AMF.CMOF.Elements.CMOF_Element_Access
           := CMOF_Element_Sets.Element (Position);

      begin
         if not Info.Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Info.Element_Numbers.Insert (Element, Last);
            Info.Number_Element.Insert (Last, Element);
         end if;
      end Assign_Set;

      Element : AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      --  Assign numbers for classes and their owned properties.

      Info.First_Class := Last + 1;
      Sort (Info.Classes).Iterate (Assign_Ordered_Set'Access);
      Info.Last_Class := Last;
      Info.First_Class_Property := Last + 1;
      Sort (Info.Classes).Iterate
       (Assign_Collection_Of_Element_Property'Access);
      Info.Last_Multiple_Class_Property := Last;
      Sort (Info.Classes).Iterate
       (Assign_Owned_By_Class_Property'Access);
      Info.Last_Class_Property := Last;

      --  Assign numbers for associations.

      Info.Associations.Iterate (Assign_Set'Access);

      --  Assign numbers for other elements.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));

         if not Info.Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Info.Element_Numbers.Insert (Element, Last);
            Info.Number_Element.Insert (Last, Element);
         end if;
      end loop;

      Info.Last_Element := Last;

      --  Disable generation of attributes and constructors when there are no
      --  classes in the metamodel.

      if Info.Classes.Is_Empty then
         Generator.Arguments.Generate_Attributes := False;
         Generator.Arguments.Generate_Constructors := False;
         Generator.Arguments.Generate_Reflection := False;
      end if;
   end Assign_Element_Numbers;

   ---------------------------
   -- Assign_Member_Numbers --
   ---------------------------

   procedure Assign_Member_Numbers
    (Info   : not null Metamodel_Information_Access;
     Extent : not null AMF.Extents.Extent_Access)
   is
      type Boolean_Array is array (Positive range <>) of Boolean;

      function Count (Item : Boolean_Array) return Natural;

      type Attribute_Group_Information (Length : Natural) is record
         Index : Positive;
         Mask  : Boolean_Array (1 .. Length);
      end record;

      type Attribute_Group_Access is access all Attribute_Group_Information;

      function Hash
       (Item : Attribute_Group_Access) return Ada.Containers.Hash_Type;

      package Property_Attribute_Group_Maps is
        new Ada.Containers.Hashed_Maps
             (AMF.CMOF.Properties.CMOF_Property_Access,
              Attribute_Group_Access,
              Hash,
              AMF.CMOF.Properties."=");

      package Attribute_Group_Sets is
        new Ada.Containers.Hashed_Sets
             (Attribute_Group_Access, Hash, "=");

      ----------
      -- Pack --
      ----------

      procedure Pack
       (Map : in out Property_Attribute_Group_Maps.Map;
        Set : in out Attribute_Group_Sets.Set)
      is
         Attribute : AMF.CMOF.Properties.CMOF_Property_Access;
         Position  : Attribute_Group_Sets.Cursor := Set.First;
         Selected  : Attribute_Group_Access;
         Merged    : Attribute_Group_Access;
         Result    : Attribute_Group_Sets.Set;
         Aux       : CMOF_Property_Sets.Set;

      begin
         while not Set.Is_Empty loop
            Position := Set.First;

            if Attribute_Group_Sets.Has_Element (Position) then
               Selected := Attribute_Group_Sets.Element (Position);
               Attribute_Group_Sets.Next (Position);
            end if;

            while Attribute_Group_Sets.Has_Element (Position) loop
               if Count (Selected.Mask)
                    < Count (Attribute_Group_Sets.Element (Position).Mask)
               then
                  Selected := Attribute_Group_Sets.Element (Position);
               end if;

               Attribute_Group_Sets.Next (Position);
            end loop;

            --  Remove selected group from source set and insert it into result
            --  set.

            Set.Delete (Selected);
            Result.Insert (Selected);

            --  Allocate new number for group.

            Selected.Index := Natural (Result.Length);

            --  Pack selected group with another when possible.

            loop
               Position := Set.First;
               Merged   := null;

               --  Lookup for another group witch can be packed with selected
               --  one.

               while Attribute_Group_Sets.Has_Element (Position) loop
                  if Count
                      (Selected.Mask
                         and Attribute_Group_Sets.Element (Position).Mask) = 0
                  then
                     if Merged = null
                       or else Count (Merged.Mask)
                                 < Count
                                    (Attribute_Group_Sets.Element
                                      (Position).Mask)
                     then
                        Merged := Attribute_Group_Sets.Element (Position);
                     end if;
                  end if;

                  Attribute_Group_Sets.Next (Position);
               end loop;

               exit when Merged = null;

               --  Remove merged group from source set of groups.

               Set.Delete (Merged);

               --  Recompute new mask of group after pack.

               Selected.Mask := Selected.Mask or Merged.Mask;

               --  Fix attribute to group mapping.

               declare
                  Position : Property_Attribute_Group_Maps.Cursor := Map.First;

               begin
                  while
                    Property_Attribute_Group_Maps.Has_Element (Position)
                  loop
                     if Property_Attribute_Group_Maps.Element (Position)
                          = Merged
                     then
                        Aux.Insert
                         (Property_Attribute_Group_Maps.Key (Position));
                     end if;

                     Property_Attribute_Group_Maps.Next (Position);
                  end loop;
               end;

               declare
                  Position : CMOF_Property_Sets.Cursor := Aux.First;

               begin
                  while CMOF_Property_Sets.Has_Element (Position) loop
                     Attribute := CMOF_Property_Sets.Element (Position);
                     Map.Delete (Attribute);
                     Map.Insert (Attribute, Selected);
                     CMOF_Property_Sets.Next (Position);
                  end loop;
               end;

               Aux.Clear;
            end loop;
         end loop;

         Set := Result;
      end Pack;

      Attribute_Group   : Property_Attribute_Group_Maps.Map;
      Member_Groups     : Attribute_Group_Sets.Set;
      Collection_Groups : Attribute_Group_Sets.Set;

      procedure Analyze_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
      --  Analyze superclasses and attributes of the specified class.

      -------------------
      -- Analyze_Class --
      -------------------

      procedure Analyze_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Superclasses   : constant
           AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
             := Class.Get_Super_Class;
         Attributes     : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Redefines      : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
         Attribute_Info : Attribute_Group_Access;

      begin
         for J in 1 .. Superclasses.Length loop
            Analyze_Class (Superclasses.Element (J));
         end loop;

         for J in 1 .. Attributes.Length loop
            Attribute      := Attributes.Element (J);
            Attribute_Info := null;

            --  Attribute can be analyzed already, skip it then.

            if not Attribute_Group.Contains (Attribute) then
               Redefines := Attribute.Get_Redefined_Property;

               if not Redefines.Is_Empty then
                  --  Attribute redefines another one, use the same attribute
                  --  information.

                  Attribute_Info :=
                    Attribute_Group.Element (Redefines.Element (1));

               else
                  --  Lookup for another analyzed attribute which is not
                  --  distinguishable as Ada subprogram.

                  declare
                     Position        : Property_Attribute_Group_Maps.Cursor
                       := Attribute_Group.First;
                     Other_Attribute : AMF.CMOF.Properties.CMOF_Property_Access;
                     Other_Class     : AMF.CMOF.Classes.CMOF_Class_Access;

                  begin
                     while
                       Property_Attribute_Group_Maps.Has_Element (Position)
                     loop
                        Other_Attribute :=
                          Property_Attribute_Group_Maps.Key (Position);
                        Other_Class := Other_Attribute.Get_Class;

                        if not Attribute_Mapping.Is_Ada_Distinguishable
                                (Attribute, Other_Attribute, Internal)
                        then
                           Attribute_Info :=
                             Property_Attribute_Group_Maps.Element (Position);

                           exit;
                        end if;

                        Property_Attribute_Group_Maps.Next (Position);
                     end loop;
                  end;
               end if;

               if Attribute_Info = null then
                  if Use_Member_Slot (Attribute) then
                     Attribute_Info :=
                       new Attribute_Group_Information'
                            (Length => Natural (Metamodel_Info.Classes.Length),
                             Index  => Natural (Member_Groups.Length) + 1,
                             Mask   => (others => False));
                     Member_Groups.Insert (Attribute_Info);

                  else
                     Attribute_Info :=
                       new Attribute_Group_Information'
                            (Length => Natural (Metamodel_Info.Classes.Length),
                             Index  => Natural (Collection_Groups.Length) + 1,
                             Mask   => (others => False));
                     Collection_Groups.Insert (Attribute_Info);
                  end if;
               end if;

               Attribute_Group.Insert (Attribute, Attribute_Info);
            end if;
         end loop;
      end Analyze_Class;

      -----------
      -- Count --
      -----------

      function Count (Item : Boolean_Array) return Natural is
      begin
         return Result : Natural := 0 do
            for J in Item'Range loop
               if Item (J) then
                  Result := Result + 1;
               end if;
            end loop;
         end return;
      end Count;

      ----------
      -- Hash --
      ----------

      function Hash
       (Item : Attribute_Group_Access) return Ada.Containers.Hash_Type is
      begin
         return Ada.Containers.Hash_Type (Item.Index);
      end Hash;

   begin
      --  Group attributes by unique setter/getter subprogram.

      declare
         Position : CMOF_Element_Sets.Cursor := Info.Classes.First;

      begin
         while CMOF_Element_Sets.Has_Element (Position) loop
            Analyze_Class
             (AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Element_Sets.Element (Position)));

            CMOF_Element_Sets.Next (Position);
         end loop;
      end;

      --  Calculate masks.

      declare
         Class              : AMF.CMOF.Classes.CMOF_Class_Access;
         Class_Position     : CMOF_Element_Sets.Cursor := Info.Classes.First;
         Info               : Class_Information_Access;
         Current            : Positive := 1;
         Attribute_Position : CMOF_Property_Sets.Cursor;
         Attribute          : AMF.CMOF.Properties.CMOF_Property_Access;

      begin
         while CMOF_Element_Sets.Has_Element (Class_Position) loop
            Class
              := AMF.CMOF.Classes.CMOF_Class_Access
                  (CMOF_Element_Sets.Element (Class_Position));

            if not Class.Get_Is_Abstract then
               Info := Class_Info.Element (Class);

               Attribute_Position := Info.All_Attributes.First;

               while CMOF_Property_Sets.Has_Element (Attribute_Position) loop
                  Attribute := CMOF_Property_Sets.Element (Attribute_Position);
                  Attribute_Group.Element (Attribute).Mask (Current) := True;
                  CMOF_Property_Sets.Next (Attribute_Position);
               end loop;

               Current := Current + 1;
            end if;

            CMOF_Element_Sets.Next (Class_Position);
         end loop;
      end;

      --  Pack members.

      Pack (Attribute_Group, Member_Groups);
      Pack (Attribute_Group, Collection_Groups);

      --  Store results.

      declare
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Attribute_Info : Attribute_Group_Access;
         Position       : Property_Attribute_Group_Maps.Cursor
           := Attribute_Group.First;

      begin
         while Property_Attribute_Group_Maps.Has_Element (Position) loop
            Attribute      := Property_Attribute_Group_Maps.Key (Position);
            Attribute_Info := Property_Attribute_Group_Maps.Element (Position);

            if Use_Member_Slot (Attribute) then
               Info.Attribute_Member.Insert (Attribute, Attribute_Info.Index);

            else
               Info.Attribute_Collection.Insert
                (Attribute, Attribute_Info.Index);
            end if;

            Property_Attribute_Group_Maps.Next (Position);
         end loop;
      end;
   end Assign_Member_Numbers;

   -----------------------
   -- Classify_Elements --
   -----------------------

   procedure Classify_Elements
    (Info     : not null Metamodel_Information_Access;
     Elements : AMF.Elements.Collections.Set_Of_Element)
   is
      Element : AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      --  Classify elements and fills All_Classes and All_Associations sets.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));

         if Element.all in AMF.CMOF.Associations.CMOF_Association'Class then
            Info.Associations.Insert (Element);

         elsif Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
            Info.Classes.Insert (Element);

         elsif Element.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            Info.Data_Types.Insert (Element);

         elsif Element.all in AMF.CMOF.Packages.CMOF_Package'Class then
            Info.Packages.Insert (Element);
         end if;
      end loop;
   end Classify_Elements;

   ----------------------------
   -- Compute_All_Properties --
   ----------------------------

   procedure Compute_All_Properties
    (Extents : in out AMF.Extents.Collections.Set_Of_Extent;
     Class   : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      procedure Process_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
      --  Process specified class and all its superclasses.

      Info : not null Class_Information_Access
        := new Class_Information'(Class, others => <>);

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Superclasses   : AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Attributes     :
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Redefines      : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

      begin
         --  Process superclasses

         for J in 1 .. Superclasses.Length loop
            Process_Class (Superclasses.Element (J));
         end loop;

         --  Add class's extent into the set of used extents.

         Extents.Include (AMF.Elements.Element_Access (Class).Extent);

         --  Process class's attributes

         for J in 1 .. Attributes.Length loop
            Attribute := Attributes.Element (J);
            Redefines := Attribute.Get_Redefined_Property;
            Attribute_Type := Attribute.Get_Type;

            --  Add property into set of all attributes.

            if not Info.All_Attributes.Contains (Attribute) then
               Info.All_Attributes.Insert (Attribute);
            end if;
         end loop;
      end Process_Class;

   begin
      if Class.Get_Is_Abstract then
         --  Ignore abstract classes.

         return;
      end if;

      Process_Class (Class);
      Class_Info.Insert (Class, Info);
   end Compute_All_Properties;

   ----------------------------
   -- Compute_Metamodel_Name --
   ----------------------------

   procedure Compute_Metamodel_Name
    (Info   : not null Metamodel_Information_Access;
     Extent : not null AMF.Extents.Extent_Access)
   is
      Elements : constant AMF.Elements.Collections.Set_Of_Element
        := Extent.Elements;

   begin
      --  Looking for first instance of CMOF::Package and use its name to
      --  compute metamodel name of analyzed extent.

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all
              in AMF.CMOF.Packages.CMOF_Package'Class
         then
            Info.Ada_Name :=
              League.Strings.To_Universal_String
               (Generator.Names.To_Ada_Identifier
                 (AMF.CMOF.Packages.CMOF_Package'Class
                   (Elements.Element (J).all).Get_Name.Value));

            if Module_Info.Ada_Name.Is_Empty then
               --  Set global name of the module to be used.

               Module_Info.Ada_Name := Info.Ada_Name;
            end if;

            exit;
         end if;
      end loop;
   end Compute_Metamodel_Name;

end Generator.Analyzer;
