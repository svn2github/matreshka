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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

%token Token_Code_Point
%token Token_Any_Code_Point
%token Token_Alternation
%token Token_Optional_Greedy
%token Token_Optional_Lazy
%token Token_Zero_Or_More_Greedy
%token Token_Zero_Or_More_Lazy
%token Token_One_Or_More_Greedy
%token Token_One_Or_More_Lazy
%token Token_Character_Class_Begin
%token Token_Character_Class_End
%token Token_Negate_Character_Class
%token Token_Character_Class_Range
--  %token Token_Character_Class_Union
%token Token_Multiplicity_Begin
%token Token_Multiplicity_End_Greedy
%token Token_Multiplicity_End_Lazy
%token Token_Multiplicity_Comma
%token Token_Multiplicity_Number
%token Token_Subexpression_Capture_Begin
%token Token_Subexpression_Begin
%token Token_Subexpression_End
%token Token_Property_Begin_Positive
%token Token_Property_Begin_Negative
%token Token_Property_End
%token Token_Property_Keyword
%token Token_Start_Of_Line
%token Token_End_Of_Line

%with Matreshka.Internals.Unicode.Ucd;

{
   type Property_Specification_Keyword is
    (ASCII_Hex_Digit,                 --  Names of binary properties
     Alphabetic,
     Bidi_Control,
--     Bidi_Mirrored,
     Composition_Exclusion,
     Full_Composition_Exclusion,
     Dash,
     Deprecated,
     Default_Ignorable_Code_Point,
     Diacritic,
     Extender,
     Grapheme_Base,
     Grapheme_Extend,
     Grapheme_Link,
     Hex_Digit,
     Hyphen,
     ID_Continue,
     Ideographic,
     ID_Start,
     IDS_Binary_Operator,
     IDS_Trinary_Operator,
     Join_Control,
     Logical_Order_Exception,
     Lowercase,
     Math,
     Noncharacter_Code_Point,
     Other_Alphabetic,
     Other_Default_Ignorable_Code_Point,
     Other_Grapheme_Extend,
     Other_ID_Continue,
     Other_ID_Start,
     Other_Lowercase,
     Other_Math,
     Other_Uppercase,
     Pattern_Syntax,
     Pattern_White_Space,
     Quotation_Mark,
     Radical,
     Soft_Dotted,
     STerm,
     Terminal_Punctuation,
     Unified_Ideograph,
     Uppercase,
     Variation_Selector,
     White_Space,
     XID_Continue,
     XID_Start,
     Expands_On_NFC,
     Expands_On_NFD,
     Expands_On_NFKC,
     Expands_On_NFKD,

     Other,                --  Values of the General Category
     Control,
     Format,
     Unassigned,
     Private_Use,
     Surrogate,
     Letter,
     Cased_Letter,
     Lowercase_Letter,
     Modifier_Letter,
     Other_Letter,
     Titlecase_Letter,
     Uppercase_Letter,
     Mark,
     Spacing_Mark,
     Enclosing_Mark,
     Nonspacing_Mark,
     Number,
     Decimal_Number,
     Letter_Number,
     Other_Number,
     Punctuation,
     Connector_Punctuation,
     Dash_Punctuation,
     Close_Punctuation,
     Final_Punctuation,
     Initial_Punctuation,
     Other_Punctuation,
     Open_Punctuation,
     Symbol,
     Currency_Symbol,
     Modifier_Symbol,
     Math_Symbol,
     Other_Symbol,
     Separator,
     Line_Separator,
     Paragraph_Separator,
     Space_Separator);

   type Kinds is
    (None,
     Match_Code_Point,
     Number,
     Property_Keyword,
     AST_Node);

   type YYSType (Kind : Kinds := None) is record
      case Kind is
         when None =>
            null;

         when Match_Code_Point =>
            Code : Wide_Wide_Character;

         when Number =>
            Value : Natural;

         when Property_Keyword =>
            Keyword : Property_Specification_Keyword;

         when AST_Node =>
            Node : Positive;
      end case;
   end record;
}

%%

expression : Token_Start_Of_Line re Token_End_Of_Line
{
   --  Both Start-Of-Line and End-Of-Line anchors

   Process_Expression (Pattern, $2.Node, True, True);
}
  | Token_Start_Of_Line re
{
   --  Start-Of-Line anchor

   Process_Expression (Pattern, $2.Node, True, False);
}
  | re Token_End_Of_Line
{
   --  End-Of-Line anchor

   Process_Expression (Pattern, $1.Node, False, True);
}
  | re
{
   --  No anchors

   Process_Expression (Pattern, $1.Node, False, False);
}
  ;

re : re Token_Alternation series
{
   --  Alternation

   $$ := (AST_Node, Process_Alternation (Pattern, $1.Node, $3.Node));
}
  | series
{
   $$ := $1;
}
  ;

series : series singleton
{
   Matreshka.Internals.Regexps.Compiler.Attach (Pattern.all, $1.Node, $2.Node);
   $$ := $1;
}
  | singleton
{
   $$ := $1;
}
  ;

singleton : singleton Token_Optional_Greedy
{
   --  Optional, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 0, 1, True));
}
  | singleton Token_Optional_Lazy
{
   --  Optional, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 0, 1, False));
}
  | singleton Token_Zero_Or_More_Greedy
{
   --  Zero or more, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 0, Natural'Last, True));
}
  | singleton Token_Zero_Or_More_Lazy
{
   --  Zero or more, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 0, Natural'Last, False));
}
  | singleton Token_One_Or_More_Greedy
{
   --  One or more, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 1, Natural'Last, True));
}
  | singleton Token_One_Or_More_Lazy
{
   --  One or more, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 1, Natural'Last, False));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Number Token_Multiplicity_Comma Token_Multiplicity_Number Token_Multiplicity_End_Greedy
{
   --  Multiplicity range, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, $3.Value, $5.Value, True));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Number Token_Multiplicity_Comma Token_Multiplicity_Number Token_Multiplicity_End_Lazy
{
   --  Multiplicity range, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, $3.Value, $5.Value, False));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Comma Token_Multiplicity_Number Token_Multiplicity_End_Greedy
{
   --  Multiplicity zero .. upper, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 0, $4.Value, True));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Comma Token_Multiplicity_Number Token_Multiplicity_End_Lazy
{
   --  Multiplicity zero .. upper, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, 0, $4.Value, False));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Number Token_Multiplicity_Comma Token_Multiplicity_End_Greedy
{
   --  Multiplicity lower .. infinity, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, $3.Value, Integer'Last, True));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Number Token_Multiplicity_Comma Token_Multiplicity_End_Lazy
{
   --  Multiplicity lower .. infinity, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, $3.Value, Integer'Last, False));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Number Token_Multiplicity_End_Greedy
{
   --  Multiplicity, greedy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, $3.Value, $3.Value, True));
}
  | singleton Token_Multiplicity_Begin Token_Multiplicity_Number Token_Multiplicity_End_Lazy
{
   --  Multiplicity, lazy

   $$ := (AST_Node, Process_Multiplicity (Pattern, $1.Node, $3.Value, $3.Value, False));
}
  | Token_Subexpression_Capture_Begin re Token_Subexpression_End
{
   $$ := (AST_Node, Process_Subexpression (Pattern, $2.Node, True));
}
  | Token_Subexpression_Begin re Token_Subexpression_End
{
   $$ := (AST_Node, Process_Subexpression (Pattern, $2.Node, False));
}
  | Token_Any_Code_Point
{
   --  Any code point

   $$ := (AST_Node, Process_Match_Any (Pattern));
}
  | Token_Code_Point
{
   --  Code point

   $$ := (AST_Node, Process_Code_Point (Pattern, $1.Code));
}
  | Token_Property_Begin_Positive Token_Property_Keyword Token_Property_End
{
   --  Character with binary property

   $$ := (AST_Node, Process_Binary_Property (Pattern, $2.Keyword, False));
}
  | Token_Property_Begin_Negative Token_Property_Keyword Token_Property_End
{
   --  Character with binary property, negative

   $$ := (AST_Node, Process_Binary_Property (Pattern, $2.Keyword, True));
}
  | character_class
{
   $$ := $1;
}
  ;

character_class : Token_Character_Class_Begin character_class_content Token_Character_Class_End
{
   $$ := $2;
}
  | Token_Character_Class_Begin Token_Negate_Character_Class character_class_content Token_Character_Class_End
{
   $$ := (AST_Node, Process_Negate_Character_Class (Pattern, $3.Node));
}
  ;

character_class_content : character_class_content Token_Code_Point Token_Character_Class_Range Token_Code_Point
{
   --  Add range of code points to character class

   $$ := (AST_Node, Process_Character_Class_Range (Pattern, $1.Node, $2.Code, $4.Code));
}
  | character_class_content Token_Code_Point
{
   --  Add code point to character class

   $$ := (AST_Node, Process_Character_Class_Code_Point (Pattern, $1.Node, $2.Code));
}
  | character_class_content Token_Property_Begin_Positive Token_Property_Keyword Token_Property_End
{
   --  Character with binary property

   $$ := (AST_Node, Process_Character_Class_Binary_Property (Pattern, $1.Node, $3.Keyword, False));
}
  | character_class_content Token_Property_Begin_Negative Token_Property_Keyword Token_Property_End
{
   --  Character with binary property, negative

   $$ := (AST_Node, Process_Character_Class_Binary_Property (Pattern, $1.Node, $3.Keyword, True));
}
  |
{
   --  Initialize new character class node

   $$ := (AST_Node, Process_New_Character_Class (Pattern));
}
  ;

%%
##
   procedure YYParse;
##
with Ada.Wide_Wide_Text_IO; 
with Matreshka.Internals.Regexps.Compiler;
with Matreshka.Internals.Unicode.Ucd;
##
   use Ada.Wide_Wide_Text_IO;
   use Matreshka.Internals.Regexps;

   function YYLex return Regexp_Parser_Tokens.Token is separate;

   procedure YYError (S : Wide_Wide_String) is null;

   function Process_Alternation
     (Pattern       : not null Shared_Pattern_Access;
      Alternative_1 : Positive;
      Alternative_2 : Positive) return Positive is separate;

   function Process_Multiplicity
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive is separate;

   function Process_Match_Any
     (Pattern : not null Shared_Pattern_Access)
      return Positive is separate;

   function Process_Code_Point
     (Pattern   : not null Shared_Pattern_Access;
      Character : Wide_Wide_Character) return Positive is separate;

   function Process_Negate_Character_Class
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive) return Positive is separate;

   function Process_Character_Class_Range
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive;
      Low     : Wide_Wide_Character;
      High    : Wide_Wide_Character) return Positive is separate;

   function Process_Character_Class_Code_Point
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive;
      Code    : Wide_Wide_Character) return Positive is separate;

   function Process_New_Character_Class
     (Pattern : not null Shared_Pattern_Access) return Positive is separate;

   function Process_Subexpression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Capture    : Boolean) return Positive is separate;

   function Process_Binary_Property
     (Pattern  : not null Shared_Pattern_Access;
      Keyword  : Property_Specification_Keyword;
      Negative : Boolean) return Positive is separate;

   function Process_Character_Class_Binary_Property
     (Pattern  : not null Shared_Pattern_Access;
      Class    : Positive;
      Keyword  : Property_Specification_Keyword;
      Negative : Boolean) return Positive is separate;

   procedure Process_Expression
     (Pattern       : not null Shared_Pattern_Access;
      Expression    : Positive;
      Start_Of_Line : Boolean;
      End_Of_Line   : Boolean) is separate;

   Pattern : Shared_Pattern_Access;

##
