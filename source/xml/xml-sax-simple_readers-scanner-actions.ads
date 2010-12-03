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

private package XML.SAX.Simple_Readers.Scanner.Actions is

   pragma Preelaborate;

   function On_Attribute_Name_In_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the attribute in the attribute list declaration.

   procedure On_Attribute_Value_Character_Data
    (Self  : not null access SAX_Simple_Reader'Class);
   --  Handles character data in the attribute value.

   function On_Attribute_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Process close delimiter of attribute value. Returns True when
   --  attribute's value is closed.

   procedure On_Attribute_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32);
   --  Process open delimiter of attribute value.

   function On_Character_Data
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles character data in as well as apperance of forbidden ']]>' string
   --  in the character data.

   function On_Character_Reference
    (Self : not null access SAX_Simple_Reader'Class;
     Hex  : Boolean) return Token;
   --  Processes character reference, except character reference in attribute
   --  value.

   function On_Character_Reference_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class;
     Hex  : Boolean) return Boolean;
   --  Processes character reference in attribute value. Returns False when
   --  error was detected and reported to application.

   procedure On_Close_Of_Conditional_Section
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles close of conditional section.

   function On_Close_Of_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of entity declaration.

   function On_Close_Of_Document_Type_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles close of document type declaration. Returns True when
   --  close token must be returned to parser, otherwise scanning must be
   --  continued because it pushes external subset entity into the scanner's
   --  stack.

   function On_Close_Of_Empty_Element_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of empty element tag.

   function On_Close_Of_Processing_Instruction
    (Self     : not null access SAX_Simple_Reader'Class;
     Is_Empty : Boolean) return Token;
   --  Handles close of processing instructio. When Is_Empty is True it means
   --  that processing instruction doesn't have data.

   function On_Close_Of_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of element tag and of document type declaration,

   function On_Close_Of_XML_Or_Text_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of XML declaration and text declaration.

   procedure On_Conditional_Section_Directive
    (Self    : not null access SAX_Simple_Reader'Class;
     Include : Boolean);
   --  Handles directive of conditional section.

   procedure On_Content_Of_Ignore_Conditional_Section
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles content of ignore conditional section.

   function On_Element_Name_In_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles element's name in attribute list declaration.

   function On_Entity_Value_Close_Delimiter
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Process entity value close delimiter, rule [9]. It is also handle
   --  "Include In Literal" (4.4.5) mode for parameter entities, when quotation
   --  and apostrophe characters are not recognized as delimiters.

   function On_Entity_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open delimiter of entity value.

   function On_General_Entity_Reference_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles general entity reference in attribute value.

   function On_General_Entity_Reference_In_Document_Content
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles general entity reference in document content.

   function On_General_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles general entity reference in entity value.

   function On_Parameter_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles parameter entity reference in entity value.

   function On_Parameter_Entity_Reference_In_Markup_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles parameter entity reference inside markup declaration in the
   --  document type declaration.

   function On_Parameter_Entity_Reference_In_Document_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles parameter entity reference outside of markup declaration in the
   --  document type declaration.

   function On_Less_Than_Sign_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handling of less-than sign in attribute value.

   function On_Name_In_Attribute_List_Declaration_Notation
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the notation in the attribute list declaration.

   function On_Name_In_Element_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the element declaration.

   function On_Name_In_Element_Declaration_Children
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the children element in element declaration.

   function On_Name_In_Element_Start_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the attribute in element start tag or empty element tag.

   function On_Name_In_Entity_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the entity in the entity declaration.

   function On_Name_In_Entity_Declaration_Notation
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the notation in the entity declaration.

   function On_NDATA
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles NDATA keyword in entity declaration.

   procedure On_No_XML_Declaration
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles start of document and external parsed entities which doesn't
   --  starts from XML declaration.

   function On_Open_Of_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of attribute list declaration.

   procedure On_Open_Of_Conditional_Section
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles open of conditional section.

   procedure On_Open_Of_Conditional_Section_Content
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles open of content of conditional section.

   function On_Open_Of_Document_Type_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of document type declaration.

   function On_Open_Of_Element_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of element declaration.

   function On_Open_Of_End_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of end tag.

   function On_Open_Of_Internal_Subset
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of internal subset of document type declaration.

   function On_Open_Of_Notation_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of notation declaration.

   function On_Open_Of_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of processing instruction.

   function On_Open_Of_Start_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of start tag or empty element tag.

   function On_Open_Of_XML_Or_Text_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of XML declaration in document or text declaration in
   --  external entity or external subset.

   function On_Public_Literal
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles public literal.

   function On_System_Literal
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles system literal.

   function On_Unexpected_Character
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  General handling of unexpected character.

   function On_Whitespace_In_Document
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles whitespaces outside of markup. Returns True and sets YYLVal when
   --  document content analysis started, and return False otherwise.

   procedure On_Whitespace_In_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles sequence of whitespaces between processing instruction's target
   --  and data.

   function On_Version_Keyword
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles 'version' keyword in XML declaration or text declaration.

end XML.SAX.Simple_Readers.Scanner.Actions;
