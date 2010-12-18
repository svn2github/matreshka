with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Constructors;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Links;

package body CMOF.Factory is

   use CMOF.Internals.Metamodel;

   ------------
   -- Create --
   ------------

   function Create (Meta_Class : CMOF_Class) return CMOF_Element is
   begin
      if Meta_Class = MC_CMOF_Association then
         return CMOF.Internals.Constructors.Create_Association;

      elsif Meta_Class = MC_CMOF_Class then
         return CMOF.Internals.Constructors.Create_Class;

      elsif Meta_Class = MC_CMOF_Comment then
         return CMOF.Internals.Constructors.Create_Comment;

      elsif Meta_Class = MC_CMOF_Constraint then
         return CMOF.Internals.Constructors.Create_Constraint;

      elsif Meta_Class = MC_CMOF_Data_Type then
         return CMOF.Internals.Constructors.Create_Data_Type;

      elsif Meta_Class = MC_CMOF_Element_Import then
         return CMOF.Internals.Constructors.Create_Element_Import;

      elsif Meta_Class = MC_CMOF_Enumeration then
         return CMOF.Internals.Constructors.Create_Enumeration;

      elsif Meta_Class = MC_CMOF_Enumeration_Literal then
         return CMOF.Internals.Constructors.Create_Enumeration_Literal;

      elsif Meta_Class = MC_CMOF_Expression then
         return CMOF.Internals.Constructors.Create_Expression;

      elsif Meta_Class = MC_CMOF_Opaque_Expression then
         return CMOF.Internals.Constructors.Create_Opaque_Expression;

      elsif Meta_Class = MC_CMOF_Operation then
         return CMOF.Internals.Constructors.Create_Operation;

      elsif Meta_Class = MC_CMOF_Package then
         return CMOF.Internals.Constructors.Create_Package;

      elsif Meta_Class = MC_CMOF_Package_Import then
         return CMOF.Internals.Constructors.Create_Package_Import;

      elsif Meta_Class = MC_CMOF_Package_Merge then
         return CMOF.Internals.Constructors.Create_Package_Merge;

      elsif Meta_Class = MC_CMOF_Parameter then
         return CMOF.Internals.Constructors.Create_Parameter;

      elsif Meta_Class = MC_CMOF_Primitive_Type then
         return CMOF.Internals.Constructors.Create_Primitive_Type;

      elsif Meta_Class = MC_CMOF_Property then
         return CMOF.Internals.Constructors.Create_Property;
      end if;

      raise Program_Error with "Unknown CMOF class";
   end Create;

   -----------------
   -- Create_Link --
   -----------------

   procedure Create_Link
    (Association    : CMOF_Association;
     First_Element  : CMOF_Element;
     Second_Element : CMOF_Element)
   is
      Member_End      : constant Ordered_Set_Of_CMOF_Property
        := CMOF.Internals.Attributes.Internal_Get_Member_End (Association);

   begin
      CMOF.Internals.Links.Internal_Create_Link
       (Association,
        First_Element,
        CMOF.Internals.Collections.Element (Member_End, 1),
        Second_Element,
        CMOF.Internals.Collections.Element (Member_End, 2));
   end Create_Link;

end CMOF.Factory;
