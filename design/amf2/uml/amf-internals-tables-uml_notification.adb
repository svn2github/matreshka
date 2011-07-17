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
with AMF.CMOF.Properties;
with AMF.Holders.Elements;
with AMF.Holders.Reals;
with AMF.Holders.Unlimited_Naturals;
with AMF.Internals.Helpers;
with AMF.Internals.Listener_Registry;
with AMF.UML.Holders.Aggregation_Kinds;
with AMF.UML.Holders.Call_Concurrency_Kinds;
with AMF.UML.Holders.Expansion_Kinds;
with AMF.UML.Holders.Interaction_Operator_Kinds;
with AMF.UML.Holders.Message_Sorts;
with AMF.UML.Holders.Object_Node_Ordering_Kinds;
with AMF.UML.Holders.Parameter_Direction_Kinds;
with AMF.UML.Holders.Pseudostate_Kinds;
with AMF.UML.Holders.Transition_Kinds;
with AMF.UML.Holders.Visibility_Kinds;
with League.Holders;
with League.Holders.Booleans;
with League.Holders.Integers;
with League.Strings.Internals;

package body AMF.Internals.Tables.UML_Notification is

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : Boolean;
     New_Value : Boolean) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        League.Holders.Booleans.To_Holder (Old_Value),
        League.Holders.Booleans.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Optional_Boolean;
     New_Value : AMF.Optional_Boolean) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.To_Holder (Old_Value),
        AMF.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : Matreshka.Internals.Strings.Shared_String_Access;
     New_Value : Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Strings.Shared_String_Access;

      OV : League.Holders.Holder;
      NV : League.Holders.Holder;

   begin
      League.Holders.Set_Tag (OV, League.Holders.Universal_String_Tag);

      if Old_Value /= null then
         League.Holders.Replace_Element
          (OV, League.Strings.Internals.Create (Old_Value));
      end if;

      League.Holders.Set_Tag (NV, League.Holders.Universal_String_Tag);

      if New_Value /= null then
         League.Holders.Replace_Element
          (NV, League.Strings.Internals.Create (New_Value));
      end if;

      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        OV,
        NV);
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : Integer;
     New_Value : Integer) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        League.Holders.Integers.To_Holder (Old_Value),
        League.Holders.Integers.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Optional_Integer;
     New_Value : AMF.Optional_Integer) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.To_Holder (Old_Value),
        AMF.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Unlimited_Natural;
     New_Value : AMF.Unlimited_Natural) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.Unlimited_Naturals.To_Holder (Old_Value),
        AMF.Holders.Unlimited_Naturals.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Optional_Unlimited_Natural;
     New_Value : AMF.Optional_Unlimited_Natural) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.To_Holder (Old_Value),
        AMF.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Real;
     New_Value : AMF.Real) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.Reals.To_Holder (Old_Value),
        AMF.Holders.Reals.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Internals.UML_Element;
     New_Value : AMF.Internals.UML_Element) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.Elements.To_Holder
         (AMF.Internals.Helpers.To_Element (Old_Value)),
        AMF.Holders.Elements.To_Holder
         (AMF.Internals.Helpers.To_Element (New_Value)));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Aggregation_Kind;
     New_Value : AMF.UML.UML_Aggregation_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Aggregation_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Aggregation_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Call_Concurrency_Kind;
     New_Value : AMF.UML.UML_Call_Concurrency_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Call_Concurrency_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Call_Concurrency_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Expansion_Kind;
     New_Value : AMF.UML.UML_Expansion_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Expansion_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Expansion_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Interaction_Operator_Kind;
     New_Value : AMF.UML.UML_Interaction_Operator_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Message_Sort;
     New_Value : AMF.UML.UML_Message_Sort) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Message_Sorts.To_Holder (Old_Value),
        AMF.UML.Holders.Message_Sorts.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Object_Node_Ordering_Kind;
     New_Value : AMF.UML.UML_Object_Node_Ordering_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Object_Node_Ordering_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Object_Node_Ordering_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.Optional_UML_Parameter_Effect_Kind;
     New_Value : AMF.UML.Optional_UML_Parameter_Effect_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.To_Holder (Old_Value),
        AMF.UML.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Parameter_Direction_Kind;
     New_Value : AMF.UML.UML_Parameter_Direction_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Parameter_Direction_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Parameter_Direction_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Pseudostate_Kind;
     New_Value : AMF.UML.UML_Pseudostate_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Pseudostate_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Pseudostate_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Transition_Kind;
     New_Value : AMF.UML.UML_Transition_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Transition_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Transition_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Visibility_Kind;
     New_Value : AMF.UML.UML_Visibility_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.Visibility_Kinds.To_Holder (Old_Value),
        AMF.UML.Holders.Visibility_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.UML_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.Optional_UML_Visibility_Kind;
     New_Value : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.UML.Holders.To_Holder (Old_Value),
        AMF.UML.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

end AMF.Internals.Tables.UML_Notification;
