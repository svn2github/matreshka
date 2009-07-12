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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
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
--  This package is generated automatically
------------------------------------------------------------------------------

package Matreshka.Internals.Ucd.Core is

   pragma Preelaborate;

   Group_0000 : aliased constant Core_Second_Stage
     := (16#09#           =>  --  0009
          (Control, 0, Control, Other, Sp, Break_After,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0A#           =>  --  000A
          (Control, 0, LF, LF, LF, Line_Feed,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0B# .. 16#0C# =>  --  000B .. 000C
          (Control, 0, Control, Newline, Sp, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0D#           =>  --  000D
          (Control, 0, CR, CR, CR, Carriage_Return,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#20#           =>  --  0020
          (Space_Separator, 0, Other, Other, Sp, Space,
           (Pattern_White_Space
              | White_Space
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>  --  0021
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>  --  0022
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  0023
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  0024
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>  --  0025
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  0026
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>  --  0027
          (Other_Punctuation, 0, Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  0028
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>  --  0029
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A#           =>  --  002A
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2B#           =>  --  002B
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2C#           =>  --  002C
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2D#           =>  --  002D
          (Dash_Punctuation, 0, Other, Other, S_Continue, Hyphen,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>  --  002E
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Infix_Numeric,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  002F
          (Other_Punctuation, 0, Other, Other, Other, Break_Symbols,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#39# =>  --  0030 .. 0039
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>  --  003A
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#3B#           =>  --  003B
          (Other_Punctuation, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3E# =>  --  003C .. 003E
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3F#           =>  --  003F
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  0040
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#41# .. 16#46# =>  --  0041 .. 0046
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47# .. 16#5A# =>  --  0047 .. 005A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5B#           =>  --  005B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  005C
          (Other_Punctuation, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D#           =>  --  005D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  005E
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math
              | Case_Ignorable => True,
            others => False)),
         16#5F#           =>  --  005F
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60#           =>  --  0060
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Pattern_Syntax
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#61# .. 16#66# =>  --  0061 .. 0066
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67# .. 16#68# =>  --  0067 .. 0068
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69# .. 16#6A# =>  --  0069 .. 006A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B# .. 16#7A# =>  --  006B .. 007A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>  --  007B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7C#           =>  --  007C
          (Math_Symbol, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7D#           =>  --  007D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7E#           =>  --  007E
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>  --  0085
          (Control, 0, Control, Newline, Sep, Next_Line,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#A0#           =>  --  00A0
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#A1#           =>  --  00A1
          (Other_Punctuation, 0, Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A2#           =>  --  00A2
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A3# .. 16#A5# =>  --  00A3 .. 00A5
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A6#           =>  --  00A6
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A7#           =>  --  00A7
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A8#           =>  --  00A8
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#A9#           =>  --  00A9
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AA#           =>  --  00AA
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#AB#           =>  --  00AB
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#AC#           =>  --  00AC
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AD#           =>  --  00AD
          (Format, 0, Control, Format, Format, Break_After,
           (Hyphen
              | Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#AE#           =>  --  00AE
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AF#           =>  --  00AF
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#B0#           =>  --  00B0
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B1#           =>  --  00B1
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B2# .. 16#B3# =>  --  00B2 .. 00B3
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#B4#           =>  --  00B4
          (Modifier_Symbol, 0, Other, Other, Other, Break_Before,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#B5#           =>  --  00B5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B6#           =>  --  00B6
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B7#           =>  --  00B7
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Ambiguous,
           (Diacritic
              | Extender
              | Other_ID_Continue
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B8#           =>  --  00B8
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#B9#           =>  --  00B9
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#BA#           =>  --  00BA
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BB#           =>  --  00BB
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#BC# .. 16#BE# =>  --  00BC .. 00BE
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#BF#           =>  --  00BF
          (Other_Punctuation, 0, Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#D6# =>  --  00C0 .. 00D6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D7#           =>  --  00D7
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8# .. 16#DE# =>  --  00D8 .. 00DE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DF# .. 16#F6# =>  --  00DF .. 00F6
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>  --  00F7
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Control, 0, Control, Other, Other, Combining_Mark,
           (others => False)));

   Group_0001 : aliased constant Core_Second_Stage
     := (16#01#           =>  --  0101
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#03#           =>  --  0103
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#05#           =>  --  0105
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#07#           =>  --  0107
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#09#           =>  --  0109
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0B#           =>  --  010B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0D#           =>  --  010D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0F#           =>  --  010F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#11#           =>  --  0111
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#13#           =>  --  0113
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#15#           =>  --  0115
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#17#           =>  --  0117
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#19#           =>  --  0119
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1B#           =>  --  011B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1D#           =>  --  011D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1F#           =>  --  011F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#21#           =>  --  0121
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#23#           =>  --  0123
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#25#           =>  --  0125
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#27#           =>  --  0127
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#29#           =>  --  0129
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2B#           =>  --  012B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2D#           =>  --  012D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2F#           =>  --  012F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#31#           =>  --  0131
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#33#           =>  --  0133
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#35#           =>  --  0135
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#37#           =>  --  0137
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#38#           =>  --  0138
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#3A#           =>  --  013A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3C#           =>  --  013C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3E#           =>  --  013E
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#40#           =>  --  0140
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#42#           =>  --  0142
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#44#           =>  --  0144
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>  --  0146
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48# .. 16#49# =>  --  0148 .. 0149
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4B#           =>  --  014B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4D#           =>  --  014D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4F#           =>  --  014F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#51#           =>  --  0151
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#53#           =>  --  0153
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#55#           =>  --  0155
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#57#           =>  --  0157
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59#           =>  --  0159
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>  --  015B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5D#           =>  --  015D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5F#           =>  --  015F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#61#           =>  --  0161
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>  --  0163
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65#           =>  --  0165
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67#           =>  --  0167
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>  --  0169
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>  --  016B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6D#           =>  --  016D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>  --  016F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71#           =>  --  0171
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#73#           =>  --  0173
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>  --  0175
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77#           =>  --  0177
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7A#           =>  --  017A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7C#           =>  --  017C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7E# .. 16#80# =>  --  017E .. 0180
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>  --  0183
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85#           =>  --  0185
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88#           =>  --  0188
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8C#           =>  --  018C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>  --  018D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#92#           =>  --  0192
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>  --  0195
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#99# .. 16#9A# =>  --  0199 .. 019A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9B#           =>  --  019B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#9E#           =>  --  019E
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A1#           =>  --  01A1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>  --  01A3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>  --  01A5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A8#           =>  --  01A8
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AA# .. 16#AB# =>  --  01AA .. 01AB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#AD#           =>  --  01AD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B0#           =>  --  01B0
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B4#           =>  --  01B4
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B6#           =>  --  01B6
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>  --  01B9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BA#           =>  --  01BA
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BB#           =>  --  01BB
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BD#           =>  --  01BD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BE#           =>  --  01BE
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BF#           =>  --  01BF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C0# .. 16#C3# =>  --  01C0 .. 01C3
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>  --  01C4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C5#           =>  --  01C5
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping => True,
            others => False)),
         16#C6#           =>  --  01C6
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C7#           =>  --  01C7
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C8#           =>  --  01C8
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping => True,
            others => False)),
         16#C9#           =>  --  01C9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CA#           =>  --  01CA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CB#           =>  --  01CB
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping => True,
            others => False)),
         16#CC#           =>  --  01CC
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CE#           =>  --  01CE
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D0#           =>  --  01D0
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D2#           =>  --  01D2
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D4#           =>  --  01D4
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D6#           =>  --  01D6
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D8#           =>  --  01D8
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DA#           =>  --  01DA
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DC# .. 16#DD# =>  --  01DC .. 01DD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>  --  01DF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>  --  01E1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>  --  01E3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E5#           =>  --  01E5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7#           =>  --  01E7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E9#           =>  --  01E9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EB#           =>  --  01EB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#ED#           =>  --  01ED
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EF# .. 16#F0# =>  --  01EF .. 01F0
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F1#           =>  --  01F1
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F2#           =>  --  01F2
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping => True,
            others => False)),
         16#F3#           =>  --  01F3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F5#           =>  --  01F5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9#           =>  --  01F9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FB#           =>  --  01FB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FD#           =>  --  01FD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)));

   Group_0002 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0200
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#01#           =>  --  0201
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#02#           =>  --  0202
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#03#           =>  --  0203
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#04#           =>  --  0204
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#05#           =>  --  0205
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#06#           =>  --  0206
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#07#           =>  --  0207
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#08#           =>  --  0208
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#09#           =>  --  0209
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0A#           =>  --  020A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0B#           =>  --  020B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0C#           =>  --  020C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0D#           =>  --  020D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0E#           =>  --  020E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0F#           =>  --  020F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#10#           =>  --  0210
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#11#           =>  --  0211
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#12#           =>  --  0212
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#13#           =>  --  0213
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#14#           =>  --  0214
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#15#           =>  --  0215
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#16#           =>  --  0216
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#17#           =>  --  0217
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#18#           =>  --  0218
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#19#           =>  --  0219
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1A#           =>  --  021A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1B#           =>  --  021B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1C#           =>  --  021C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1D#           =>  --  021D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1E#           =>  --  021E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1F#           =>  --  021F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#20#           =>  --  0220
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#22#           =>  --  0222
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#23#           =>  --  0223
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#24#           =>  --  0224
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#25#           =>  --  0225
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#26#           =>  --  0226
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27#           =>  --  0227
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#28#           =>  --  0228
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#29#           =>  --  0229
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2A#           =>  --  022A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2B#           =>  --  022B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2C#           =>  --  022C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2D#           =>  --  022D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2E#           =>  --  022E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2F#           =>  --  022F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#30#           =>  --  0230
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#31#           =>  --  0231
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#32#           =>  --  0232
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#33#           =>  --  0233
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3A# .. 16#3B# =>  --  023A .. 023B
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3C#           =>  --  023C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3D# .. 16#3E# =>  --  023D .. 023E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#41#           =>  --  0241
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#42#           =>  --  0242
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#43# .. 16#46# =>  --  0243 .. 0246
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47#           =>  --  0247
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>  --  0248
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#49#           =>  --  0249
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4A#           =>  --  024A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4B#           =>  --  024B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4C#           =>  --  024C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4D#           =>  --  024D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4E#           =>  --  024E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4F# .. 16#51# =>  --  024F .. 0251
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#53# .. 16#54# =>  --  0253 .. 0254
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56# .. 16#57# =>  --  0256 .. 0257
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59#           =>  --  0259
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>  --  025B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#60#           =>  --  0260
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>  --  0263
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>  --  0268
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>  --  0269
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>  --  026B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>  --  026F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71# .. 16#72# =>  --  0271 .. 0272
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>  --  0275
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>  --  027D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#80#           =>  --  0280
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>  --  0283
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88# .. 16#8C# =>  --  0288 .. 028C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#92#           =>  --  0292
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#94#           =>  --  0294
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9D#           =>  --  029D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#B0# .. 16#B1# =>  --  02B0 .. 02B1
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#B2#           =>  --  02B2
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#B3# .. 16#B8# =>  --  02B3 .. 02B8
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#B9# .. 16#BF# =>  --  02B9 .. 02BF
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#C0# .. 16#C1# =>  --  02C0 .. 02C1
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#C2# .. 16#C5# =>  --  02C2 .. 02C5
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#C6#           =>  --  02C6
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#C7#           =>  --  02C7
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#C8#           =>  --  02C8
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Break_Before,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#C9# .. 16#CB# =>  --  02C9 .. 02CB
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#CC#           =>  --  02CC
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Break_Before,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#CD#           =>  --  02CD
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#CE# .. 16#CF# =>  --  02CE .. 02CF
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#D0#           =>  --  02D0
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#D1#           =>  --  02D1
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#D2# .. 16#D7# =>  --  02D2 .. 02D7
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#D8# .. 16#DB# =>  --  02D8 .. 02DB
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#DC#           =>  --  02DC
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#DD#           =>  --  02DD
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#DE#           =>  --  02DE
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#DF#           =>  --  02DF
          (Modifier_Symbol, 0, Other, Other, Other, Break_Before,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#E0# .. 16#E4# =>  --  02E0 .. 02E4
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#E5# .. 16#EB# =>  --  02E5 .. 02EB
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#EC#           =>  --  02EC
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#ED#           =>  --  02ED
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#EE#           =>  --  02EE
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)));

   Group_0003 : aliased constant Core_Second_Stage
     := (16#00# .. 16#14# =>  --  0300 .. 0314
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#15#           =>  --  0315
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#16# .. 16#19# =>  --  0316 .. 0319
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#1A#           =>  --  031A
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#1B#           =>  --  031B
          (Nonspacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#1C# .. 16#20# =>  --  031C .. 0320
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#21# .. 16#22# =>  --  0321 .. 0322
          (Nonspacing_Mark, 202, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#23# .. 16#26# =>  --  0323 .. 0326
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#27# .. 16#28# =>  --  0327 .. 0328
          (Nonspacing_Mark, 202, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#29# .. 16#33# =>  --  0329 .. 0333
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#34# .. 16#38# =>  --  0334 .. 0338
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#39# .. 16#3C# =>  --  0339 .. 033C
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3D# .. 16#3F# =>  --  033D .. 033F
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#40# .. 16#41# =>  --  0340 .. 0341
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Deprecated
              | Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#42# .. 16#44# =>  --  0342 .. 0344
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#45#           =>  --  0345
          (Nonspacing_Mark, 240, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | Lowercase
              | XID_Continue
              | Cased
              | Case_Ignorable
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>  --  0346
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#47# .. 16#49# =>  --  0347 .. 0349
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4A# .. 16#4C# =>  --  034A .. 034C
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4D# .. 16#4E# =>  --  034D .. 034E
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4F#           =>  --  034F
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Glue,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#50# .. 16#52# =>  --  0350 .. 0352
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#53# .. 16#56# =>  --  0353 .. 0356
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#57#           =>  --  0357
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#58#           =>  --  0358
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#59# .. 16#5A# =>  --  0359 .. 035A
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5B#           =>  --  035B
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5C#           =>  --  035C
          (Nonspacing_Mark, 233, Extend, Extend, Extend, Glue,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5D# .. 16#5E# =>  --  035D .. 035E
          (Nonspacing_Mark, 234, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5F#           =>  --  035F
          (Nonspacing_Mark, 233, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#60# .. 16#61# =>  --  0360 .. 0361
          (Nonspacing_Mark, 234, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#62#           =>  --  0362
          (Nonspacing_Mark, 233, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#63# .. 16#6F# =>  --  0363 .. 036F
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#70#           =>  --  0370
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#72#           =>  --  0372
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#74#           =>  --  0374
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#75#           =>  --  0375
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#76#           =>  --  0376
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#78# .. 16#79# =>  --  0378 .. 0379
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#7A#           =>  --  037A
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#7E#           =>  --  037E
          (Other_Punctuation, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#7F# .. 16#83# =>  --  037F .. 0383
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#84# .. 16#85# =>  --  0384 .. 0385
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#86#           =>  --  0386
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#87#           =>  --  0387
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Alphabetic,
           (Other_ID_Continue
              | Terminal_Punctuation
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#88# .. 16#8A# =>  --  0388 .. 038A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8B#           =>  --  038B
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8C#           =>  --  038C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8D#           =>  --  038D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8E# .. 16#8F# =>  --  038E .. 038F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#91# .. 16#A1# =>  --  0391 .. 03A1
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A2#           =>  --  03A2
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A3# .. 16#AB# =>  --  03A3 .. 03AB
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CF#           =>  --  03CF
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  03D0 .. 03D1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D2#           =>  --  03D2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#D3# .. 16#D4# =>  --  03D3 .. 03D4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#D5#           =>  --  03D5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D8#           =>  --  03D8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DA#           =>  --  03DA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DC#           =>  --  03DC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DE#           =>  --  03DE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E0#           =>  --  03E0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E2#           =>  --  03E2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E4#           =>  --  03E4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E6#           =>  --  03E6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E8#           =>  --  03E8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EA#           =>  --  03EA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EC#           =>  --  03EC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EE#           =>  --  03EE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F0# .. 16#F1# =>  --  03F0 .. 03F1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>  --  03F3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#F4#           =>  --  03F4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F5#           =>  --  03F5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F6#           =>  --  03F6
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#F7#           =>  --  03F7
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F9# .. 16#FA# =>  --  03F9 .. 03FA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FC#           =>  --  03FC
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)));

   Group_0004 : aliased constant Core_Second_Stage
     := (16#30# .. 16#55# =>  --  0430 .. 0455
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56#           =>  --  0456
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#57#           =>  --  0457
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#58#           =>  --  0458
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59# .. 16#5F# =>  --  0459 .. 045F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#61#           =>  --  0461
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>  --  0463
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65#           =>  --  0465
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67#           =>  --  0467
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>  --  0469
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>  --  046B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6D#           =>  --  046D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>  --  046F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71#           =>  --  0471
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#73#           =>  --  0473
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>  --  0475
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77#           =>  --  0477
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#79#           =>  --  0479
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>  --  047B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>  --  047D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7F#           =>  --  047F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#81#           =>  --  0481
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#82#           =>  --  0482
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#83# .. 16#87# =>  --  0483 .. 0487
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#88# .. 16#89# =>  --  0488 .. 0489
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Case_Ignorable => True,
            others => False)),
         16#8B#           =>  --  048B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>  --  048D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8F#           =>  --  048F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#91#           =>  --  0491
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#93#           =>  --  0493
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>  --  0495
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#97#           =>  --  0497
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#99#           =>  --  0499
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9B#           =>  --  049B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9D#           =>  --  049D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9F#           =>  --  049F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A1#           =>  --  04A1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>  --  04A3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>  --  04A5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A7#           =>  --  04A7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A9#           =>  --  04A9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AB#           =>  --  04AB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AD#           =>  --  04AD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AF#           =>  --  04AF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B1#           =>  --  04B1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B3#           =>  --  04B3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>  --  04B5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B7#           =>  --  04B7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>  --  04B9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BB#           =>  --  04BB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>  --  04BD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BF#           =>  --  04BF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C2#           =>  --  04C2
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C4#           =>  --  04C4
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C6#           =>  --  04C6
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C8#           =>  --  04C8
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CA#           =>  --  04CA
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CC#           =>  --  04CC
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CE# .. 16#CF# =>  --  04CE .. 04CF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D1#           =>  --  04D1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D3#           =>  --  04D3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D5#           =>  --  04D5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D7#           =>  --  04D7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D9#           =>  --  04D9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DB#           =>  --  04DB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DD#           =>  --  04DD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>  --  04DF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>  --  04E1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>  --  04E3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E5#           =>  --  04E5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7#           =>  --  04E7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E9#           =>  --  04E9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EB#           =>  --  04EB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#ED#           =>  --  04ED
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EF#           =>  --  04EF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F1#           =>  --  04F1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>  --  04F3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F5#           =>  --  04F5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>  --  04F7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9#           =>  --  04F9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FB#           =>  --  04FB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FD#           =>  --  04FD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)));

   Group_0005 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0500
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#02#           =>  --  0502
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#04#           =>  --  0504
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#06#           =>  --  0506
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#08#           =>  --  0508
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0A#           =>  --  050A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0C#           =>  --  050C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0E#           =>  --  050E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#10#           =>  --  0510
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#12#           =>  --  0512
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#14#           =>  --  0514
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#16#           =>  --  0516
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#18#           =>  --  0518
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1A#           =>  --  051A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1C#           =>  --  051C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1E#           =>  --  051E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#20#           =>  --  0520
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#22#           =>  --  0522
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#24# .. 16#30# =>  --  0524 .. 0530
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#31# .. 16#56# =>  --  0531 .. 0556
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#57# .. 16#58# =>  --  0557 .. 0558
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>  --  0559
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#5A# .. 16#5B# =>  --  055A .. 055B
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  055C
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Grapheme_Base => True,
            others => False)),
         16#5D#           =>  --  055D
          (Other_Punctuation, 0, Other, Other, S_Continue, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  055E
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Grapheme_Base => True,
            others => False)),
         16#5F#           =>  --  055F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60#           =>  --  0560
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#88#           =>  --  0588
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#89#           =>  --  0589
          (Other_Punctuation, 0, Other, Mid_Num, S_Term, Infix_Numeric,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#8A#           =>  --  058A
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#8B# .. 16#90# =>  --  058B .. 0590
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#91#           =>  --  0591
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#92# .. 16#95# =>  --  0592 .. 0595
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#96#           =>  --  0596
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#97# .. 16#99# =>  --  0597 .. 0599
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#9A#           =>  --  059A
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#9B#           =>  --  059B
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#9C# .. 16#A1# =>  --  059C .. 05A1
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#A2#           =>  --  05A2
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#A3# .. 16#A7# =>  --  05A3 .. 05A7
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#A8# .. 16#A9# =>  --  05A8 .. 05A9
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AA#           =>  --  05AA
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AB# .. 16#AC# =>  --  05AB .. 05AC
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AD#           =>  --  05AD
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AE#           =>  --  05AE
          (Nonspacing_Mark, 228, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AF#           =>  --  05AF
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B0#           =>  --  05B0
          (Nonspacing_Mark, 10, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B1#           =>  --  05B1
          (Nonspacing_Mark, 11, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B2#           =>  --  05B2
          (Nonspacing_Mark, 12, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B3#           =>  --  05B3
          (Nonspacing_Mark, 13, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B4#           =>  --  05B4
          (Nonspacing_Mark, 14, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B5#           =>  --  05B5
          (Nonspacing_Mark, 15, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B6#           =>  --  05B6
          (Nonspacing_Mark, 16, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B7#           =>  --  05B7
          (Nonspacing_Mark, 17, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B8#           =>  --  05B8
          (Nonspacing_Mark, 18, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B9# .. 16#BA# =>  --  05B9 .. 05BA
          (Nonspacing_Mark, 19, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BB#           =>  --  05BB
          (Nonspacing_Mark, 20, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BC#           =>  --  05BC
          (Nonspacing_Mark, 21, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BD#           =>  --  05BD
          (Nonspacing_Mark, 22, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BE#           =>  --  05BE
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#BF#           =>  --  05BF
          (Nonspacing_Mark, 23, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C0#           =>  --  05C0
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#C1#           =>  --  05C1
          (Nonspacing_Mark, 24, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C2#           =>  --  05C2
          (Nonspacing_Mark, 25, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C3#           =>  --  05C3
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#C4#           =>  --  05C4
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C5#           =>  --  05C5
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C6#           =>  --  05C6
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#C7#           =>  --  05C7
          (Nonspacing_Mark, 18, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C8# .. 16#CF# =>  --  05C8 .. 05CF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#EA# =>  --  05D0 .. 05EA
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EB# .. 16#EF# =>  --  05EB .. 05EF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F2# =>  --  05F0 .. 05F2
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F3#           =>  --  05F3
          (Other_Punctuation, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F4#           =>  --  05F4
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Alphabetic,
           (Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)));

   Group_0006 : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>  --  0600 .. 0603
          (Format, 0, Control, Format, Format, Alphabetic,
           (Case_Ignorable => True,
            others => False)),
         16#04# .. 16#05# =>  --  0604 .. 0605
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#06# .. 16#08# =>  --  0606 .. 0608
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#09# .. 16#0A# =>  --  0609 .. 060A
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  060B
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  060C
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  060D
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#0F# =>  --  060E .. 060F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#10# .. 16#17# =>  --  0610 .. 0617
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#18#           =>  --  0618
          (Nonspacing_Mark, 30, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#19#           =>  --  0619
          (Nonspacing_Mark, 31, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#1A#           =>  --  061A
          (Nonspacing_Mark, 32, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#1B#           =>  --  061B
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#1C# .. 16#1D# =>  --  061C .. 061D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1E#           =>  --  061E
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#1F#           =>  --  061F
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  0620
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#40#           =>  --  0640
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#4B#           =>  --  064B
          (Nonspacing_Mark, 27, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4C#           =>  --  064C
          (Nonspacing_Mark, 28, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4D#           =>  --  064D
          (Nonspacing_Mark, 29, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4E#           =>  --  064E
          (Nonspacing_Mark, 30, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4F#           =>  --  064F
          (Nonspacing_Mark, 31, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#50#           =>  --  0650
          (Nonspacing_Mark, 32, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#51#           =>  --  0651
          (Nonspacing_Mark, 33, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#52#           =>  --  0652
          (Nonspacing_Mark, 34, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#53# .. 16#54# =>  --  0653 .. 0654
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#55# .. 16#56# =>  --  0655 .. 0656
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#57#           =>  --  0657
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#58#           =>  --  0658
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#59# .. 16#5B# =>  --  0659 .. 065B
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5C#           =>  --  065C
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5D# .. 16#5E# =>  --  065D .. 065E
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5F#           =>  --  065F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#60# .. 16#69# =>  --  0660 .. 0669
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6A#           =>  --  066A
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>  --  066B
          (Other_Punctuation, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6C#           =>  --  066C
          (Other_Punctuation, 0, Other, Mid_Num, Numeric, Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6D#           =>  --  066D
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#70#           =>  --  0670
          (Nonspacing_Mark, 35, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D4#           =>  --  06D4
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D6# .. 16#DC# =>  --  06D6 .. 06DC
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#DD#           =>  --  06DD
          (Format, 0, Control, Format, Format, Alphabetic,
           (Case_Ignorable => True,
            others => False)),
         16#DE#           =>  --  06DE
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Case_Ignorable => True,
            others => False)),
         16#DF# .. 16#E0# =>  --  06DF .. 06E0
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E1# .. 16#E2# =>  --  06E1 .. 06E2
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E3#           =>  --  06E3
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E4#           =>  --  06E4
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  06E5 .. 06E6
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#E7# .. 16#E8# =>  --  06E7 .. 06E8
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E9#           =>  --  06E9
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#EA#           =>  --  06EA
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#EB# .. 16#EC# =>  --  06EB .. 06EC
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#ED#           =>  --  06ED
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#F0# .. 16#F9# =>  --  06F0 .. 06F9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FD# .. 16#FE# =>  --  06FD .. 06FE
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0007 : aliased constant Core_Second_Stage
     := (16#00# .. 16#02# =>  --  0700 .. 0702
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03# .. 16#0A# =>  --  0703 .. 070A
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  070B
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  070C
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  070D
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#0E#           =>  --  070E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0F#           =>  --  070F
          (Format, 0, Control, Format, Format, Alphabetic,
           (Case_Ignorable => True,
            others => False)),
         16#11#           =>  --  0711
          (Nonspacing_Mark, 36, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#30#           =>  --  0730
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#31#           =>  --  0731
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#32# .. 16#33# =>  --  0732 .. 0733
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#34#           =>  --  0734
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#35# .. 16#36# =>  --  0735 .. 0736
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#37# .. 16#39# =>  --  0737 .. 0739
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3A#           =>  --  073A
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3B# .. 16#3C# =>  --  073B .. 073C
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3D#           =>  --  073D
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3E#           =>  --  073E
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3F#           =>  --  073F
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#40# .. 16#41# =>  --  0740 .. 0741
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#42#           =>  --  0742
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#43#           =>  --  0743
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#44#           =>  --  0744
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#45#           =>  --  0745
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#46#           =>  --  0746
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#47#           =>  --  0747
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#48#           =>  --  0748
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#49# .. 16#4A# =>  --  0749 .. 074A
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4B# .. 16#4C# =>  --  074B .. 074C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A6# .. 16#B0# =>  --  07A6 .. 07B0
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B2# .. 16#BF# =>  --  07B2 .. 07BF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C0# .. 16#C9# =>  --  07C0 .. 07C9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EB# .. 16#F1# =>  --  07EB .. 07F1
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#F2#           =>  --  07F2
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#F3#           =>  --  07F3
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#F4# .. 16#F5# =>  --  07F4 .. 07F5
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#F6#           =>  --  07F6
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F7#           =>  --  07F7
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F8#           =>  --  07F8
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#F9#           =>  --  07F9
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#FA#           =>  --  07FA
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0008 : aliased constant Core_Second_Stage
     := (others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0009 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0900
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01# .. 16#02# =>  --  0901 .. 0902
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#03#           =>  --  0903
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A# .. 16#3B# =>  --  093A .. 093B
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3C#           =>  --  093C
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3E# .. 16#40# =>  --  093E .. 0940
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#48# =>  --  0941 .. 0948
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#49# .. 16#4C# =>  --  0949 .. 094C
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  094D
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4E# .. 16#4F# =>  --  094E .. 094F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51#           =>  --  0951
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#52#           =>  --  0952
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#53# .. 16#54# =>  --  0953 .. 0954
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#55# .. 16#57# =>  --  0955 .. 0957
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>  --  0962 .. 0963
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#64# .. 16#65# =>  --  0964 .. 0965
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#66# .. 16#6F# =>  --  0966 .. 096F
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>  --  0970
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>  --  0971
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#73# .. 16#7A# =>  --  0973 .. 097A
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80#           =>  --  0980
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#81#           =>  --  0981
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#82# .. 16#83# =>  --  0982 .. 0983
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0984
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8D# .. 16#8E# =>  --  098D .. 098E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#91# .. 16#92# =>  --  0991 .. 0992
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>  --  09A9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B1#           =>  --  09B1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B3# .. 16#B5# =>  --  09B3 .. 09B5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BA# .. 16#BB# =>  --  09BA .. 09BB
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>  --  09BC
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BE#           =>  --  09BE
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF# .. 16#C0# =>  --  09BF .. 09C0
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C4# =>  --  09C1 .. 09C4
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C5# .. 16#C6# =>  --  09C5 .. 09C6
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C8# =>  --  09C7 .. 09C8
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9# .. 16#CA# =>  --  09C9 .. 09CA
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CB# .. 16#CC# =>  --  09CB .. 09CC
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>  --  09CD
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CF# .. 16#D6# =>  --  09CF .. 09D6
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D7#           =>  --  09D7
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D8# .. 16#DB# =>  --  09D8 .. 09DB
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DE#           =>  --  09DE
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E2# .. 16#E3# =>  --  09E2 .. 09E3
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E4# .. 16#E5# =>  --  09E4 .. 09E5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>  --  09E6 .. 09EF
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F2# .. 16#F3# =>  --  09F2 .. 09F3
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#F9# =>  --  09F4 .. 09F9
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FA#           =>  --  09FA
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_000A : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0A00
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01# .. 16#02# =>  --  0A01 .. 0A02
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#03#           =>  --  0A03
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>  --  0A04
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0B# .. 16#0E# =>  --  0A0B .. 0A0E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#11# .. 16#12# =>  --  0A11 .. 0A12
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#29#           =>  --  0A29
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#31#           =>  --  0A31
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#34#           =>  --  0A34
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#37#           =>  --  0A37
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3A# .. 16#3B# =>  --  0A3A .. 0A3B
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3C#           =>  --  0A3C
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3D#           =>  --  0A3D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E# .. 16#40# =>  --  0A3E .. 0A40
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#42# =>  --  0A41 .. 0A42
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#43# .. 16#46# =>  --  0A43 .. 0A46
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#47# .. 16#48# =>  --  0A47 .. 0A48
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#49# .. 16#4A# =>  --  0A49 .. 0A4A
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4B# .. 16#4C# =>  --  0A4B .. 0A4C
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4D#           =>  --  0A4D
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4E# .. 16#50# =>  --  0A4E .. 0A50
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51#           =>  --  0A51
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#52# .. 16#58# =>  --  0A52 .. 0A58
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5D#           =>  --  0A5D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F# .. 16#65# =>  --  0A5F .. 0A65
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>  --  0A66 .. 0A6F
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#71# =>  --  0A70 .. 0A71
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#75#           =>  --  0A75
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#76# .. 16#80# =>  --  0A76 .. 0A80
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#81# .. 16#82# =>  --  0A81 .. 0A82
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#83#           =>  --  0A83
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0A84
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8E#           =>  --  0A8E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#92#           =>  --  0A92
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>  --  0AA9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B1#           =>  --  0AB1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B4#           =>  --  0AB4
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BA# .. 16#BB# =>  --  0ABA .. 0ABB
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>  --  0ABC
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BE# .. 16#C0# =>  --  0ABE .. 0AC0
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C5# =>  --  0AC1 .. 0AC5
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C6#           =>  --  0AC6
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C8# =>  --  0AC7 .. 0AC8
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C9#           =>  --  0AC9
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA#           =>  --  0ACA
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CB# .. 16#CC# =>  --  0ACB .. 0ACC
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>  --  0ACD
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CE# .. 16#CF# =>  --  0ACE .. 0ACF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D1# .. 16#DF# =>  --  0AD1 .. 0ADF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E2# .. 16#E3# =>  --  0AE2 .. 0AE3
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E4# .. 16#E5# =>  --  0AE4 .. 0AE5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>  --  0AE6 .. 0AEF
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0#           =>  --  0AF0
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F1#           =>  --  0AF1
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_000B : aliased constant Core_Second_Stage
     := (16#01#           =>  --  0B01
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#02# .. 16#03# =>  --  0B02 .. 0B03
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#05# .. 16#0C# =>  --  0B05 .. 0B0C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0F# .. 16#10# =>  --  0B0F .. 0B10
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#13# .. 16#28# =>  --  0B13 .. 0B28
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A# .. 16#30# =>  --  0B2A .. 0B30
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#32# .. 16#33# =>  --  0B32 .. 0B33
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#35# .. 16#39# =>  --  0B35 .. 0B39
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>  --  0B3C
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3D#           =>  --  0B3D
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3E#           =>  --  0B3E
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F#           =>  --  0B3F
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#40#           =>  --  0B40
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>  --  0B41 .. 0B44
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#47# .. 16#48# =>  --  0B47 .. 0B48
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4B# .. 16#4C# =>  --  0B4B .. 0B4C
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  0B4D
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#56#           =>  --  0B56
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#57#           =>  --  0B57
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C# .. 16#5D# =>  --  0B5C .. 0B5D
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5F# .. 16#61# =>  --  0B5F .. 0B61
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#62# .. 16#63# =>  --  0B62 .. 0B63
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#66# .. 16#6F# =>  --  0B66 .. 0B6F
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>  --  0B70
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>  --  0B71
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#82#           =>  --  0B82
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#83#           =>  --  0B83
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#85# .. 16#8A# =>  --  0B85 .. 0B8A
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E# .. 16#90# =>  --  0B8E .. 0B90
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#92# .. 16#95# =>  --  0B92 .. 0B95
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#99# .. 16#9A# =>  --  0B99 .. 0B9A
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9C#           =>  --  0B9C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9E# .. 16#9F# =>  --  0B9E .. 0B9F
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3# .. 16#A4# =>  --  0BA3 .. 0BA4
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8# .. 16#AA# =>  --  0BA8 .. 0BAA
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AE# .. 16#B9# =>  --  0BAE .. 0BB9
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BE#           =>  --  0BBE
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF#           =>  --  0BBF
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0#           =>  --  0BC0
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C1# .. 16#C2# =>  --  0BC1 .. 0BC2
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6# .. 16#C8# =>  --  0BC6 .. 0BC8
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA# .. 16#CC# =>  --  0BCA .. 0BCC
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>  --  0BCD
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D0#           =>  --  0BD0
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D7#           =>  --  0BD7
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E6# .. 16#EF# =>  --  0BE6 .. 0BEF
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0# .. 16#F2# =>  --  0BF0 .. 0BF2
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F3# .. 16#F8# =>  --  0BF3 .. 0BF8
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F9#           =>  --  0BF9
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#FA#           =>  --  0BFA
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_000C : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0C00
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01# .. 16#03# =>  --  0C01 .. 0C03
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>  --  0C04
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0D#           =>  --  0C0D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#11#           =>  --  0C11
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#29#           =>  --  0C29
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#34#           =>  --  0C34
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3A# .. 16#3C# =>  --  0C3A .. 0C3C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E# .. 16#40# =>  --  0C3E .. 0C40
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#41# .. 16#44# =>  --  0C41 .. 0C44
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>  --  0C45
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#46# .. 16#48# =>  --  0C46 .. 0C48
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#49#           =>  --  0C49
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4A# .. 16#4C# =>  --  0C4A .. 0C4C
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4D#           =>  --  0C4D
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4E# .. 16#54# =>  --  0C4E .. 0C54
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#55#           =>  --  0C55
          (Nonspacing_Mark, 84, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#56#           =>  --  0C56
          (Nonspacing_Mark, 91, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#57#           =>  --  0C57
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5A# .. 16#5F# =>  --  0C5A .. 0C5F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>  --  0C62 .. 0C63
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#64# .. 16#65# =>  --  0C64 .. 0C65
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>  --  0C66 .. 0C6F
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#77# =>  --  0C70 .. 0C77
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#78# .. 16#7E# =>  --  0C78 .. 0C7E
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7F#           =>  --  0C7F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#81# =>  --  0C80 .. 0C81
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#82# .. 16#83# =>  --  0C82 .. 0C83
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0C84
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8D#           =>  --  0C8D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#91#           =>  --  0C91
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>  --  0CA9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B4#           =>  --  0CB4
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BA# .. 16#BB# =>  --  0CBA .. 0CBB
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>  --  0CBC
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BE#           =>  --  0CBE
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF#           =>  --  0CBF
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C0# .. 16#C1# =>  --  0CC0 .. 0CC1
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>  --  0CC2
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C3# .. 16#C4# =>  --  0CC3 .. 0CC4
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5#           =>  --  0CC5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C6#           =>  --  0CC6
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C7# .. 16#C8# =>  --  0CC7 .. 0CC8
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9#           =>  --  0CC9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CA# .. 16#CB# =>  --  0CCA .. 0CCB
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CC#           =>  --  0CCC
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CD#           =>  --  0CCD
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CE# .. 16#D4# =>  --  0CCE .. 0CD4
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D5# .. 16#D6# =>  --  0CD5 .. 0CD6
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D7# .. 16#DD# =>  --  0CD7 .. 0CDD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DF#           =>  --  0CDF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E2# .. 16#E3# =>  --  0CE2 .. 0CE3
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E4# .. 16#E5# =>  --  0CE4 .. 0CE5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>  --  0CE6 .. 0CEF
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0#           =>  --  0CF0
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F1# .. 16#F2# =>  --  0CF1 .. 0CF2
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_000D : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  0D00 .. 0D01
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#02# .. 16#03# =>  --  0D02 .. 0D03
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>  --  0D04
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0D#           =>  --  0D0D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#11#           =>  --  0D11
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#29#           =>  --  0D29
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3A# .. 16#3C# =>  --  0D3A .. 0D3C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E#           =>  --  0D3E
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F# .. 16#40# =>  --  0D3F .. 0D40
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>  --  0D41 .. 0D44
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#45#           =>  --  0D45
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#46# .. 16#48# =>  --  0D46 .. 0D48
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49#           =>  --  0D49
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4A# .. 16#4C# =>  --  0D4A .. 0D4C
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  0D4D
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4E# .. 16#56# =>  --  0D4E .. 0D56
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#57#           =>  --  0D57
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#5F# =>  --  0D58 .. 0D5F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>  --  0D62 .. 0D63
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#64# .. 16#65# =>  --  0D64 .. 0D65
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>  --  0D66 .. 0D6F
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#75# =>  --  0D70 .. 0D75
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#76# .. 16#78# =>  --  0D76 .. 0D78
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#79#           =>  --  0D79
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#81# =>  --  0D80 .. 0D81
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#82# .. 16#83# =>  --  0D82 .. 0D83
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0D84
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#97# .. 16#99# =>  --  0D97 .. 0D99
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B2#           =>  --  0DB2
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>  --  0DBC
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BE# .. 16#BF# =>  --  0DBE .. 0DBF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C9# =>  --  0DC7 .. 0DC9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CA#           =>  --  0DCA
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CB# .. 16#CE# =>  --  0DCB .. 0DCE
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CF#           =>  --  0DCF
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  0DD0 .. 0DD1
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D2# .. 16#D4# =>  --  0DD2 .. 0DD4
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D5#           =>  --  0DD5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D6#           =>  --  0DD6
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D7#           =>  --  0DD7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#DE# =>  --  0DD8 .. 0DDE
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DF#           =>  --  0DDF
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E0# .. 16#F1# =>  --  0DE0 .. 0DF1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F2# .. 16#F3# =>  --  0DF2 .. 0DF3
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F4#           =>  --  0DF4
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_000E : aliased constant Core_Second_Stage
     := (16#01# .. 16#2F# =>  --  0E01 .. 0E2F
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30#           =>  --  0E30
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#31#           =>  --  0E31
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#32#           =>  --  0E32
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#33#           =>  --  0E33
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue => True,
            others => False)),
         16#34# .. 16#37# =>  --  0E34 .. 0E37
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#38# .. 16#39# =>  --  0E38 .. 0E39
          (Nonspacing_Mark, 103, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3A#           =>  --  0E3A
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3F#           =>  --  0E3F
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#40# .. 16#44# =>  --  0E40 .. 0E44
          (Other_Letter, 0, Prepend, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>  --  0E45
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46#           =>  --  0E46
          (Modifier_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#47#           =>  --  0E47
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#48# .. 16#4B# =>  --  0E48 .. 0E4B
          (Nonspacing_Mark, 107, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4C#           =>  --  0E4C
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4D#           =>  --  0E4D
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4E#           =>  --  0E4E
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4F#           =>  --  0E4F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#59# =>  --  0E50 .. 0E59
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#5B# =>  --  0E5A .. 0E5B
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#81# .. 16#82# =>  --  0E81 .. 0E82
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>  --  0E84
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87# .. 16#88# =>  --  0E87 .. 0E88
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8A#           =>  --  0E8A
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8D#           =>  --  0E8D
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94# .. 16#97# =>  --  0E94 .. 0E97
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#99# .. 16#9F# =>  --  0E99 .. 0E9F
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A1# .. 16#A3# =>  --  0EA1 .. 0EA3
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>  --  0EA5
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>  --  0EA7
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AA# .. 16#AB# =>  --  0EAA .. 0EAB
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AD# .. 16#AF# =>  --  0EAD .. 0EAF
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B0#           =>  --  0EB0
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B1#           =>  --  0EB1
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B2#           =>  --  0EB2
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B3#           =>  --  0EB3
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue => True,
            others => False)),
         16#B4# .. 16#B7# =>  --  0EB4 .. 0EB7
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#B8# .. 16#B9# =>  --  0EB8 .. 0EB9
          (Nonspacing_Mark, 118, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BB# .. 16#BC# =>  --  0EBB .. 0EBC
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BD#           =>  --  0EBD
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0# .. 16#C4# =>  --  0EC0 .. 0EC4
          (Other_Letter, 0, Prepend, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C6#           =>  --  0EC6
          (Modifier_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#C8# .. 16#CB# =>  --  0EC8 .. 0ECB
          (Nonspacing_Mark, 122, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CC#           =>  --  0ECC
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CD#           =>  --  0ECD
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D0# .. 16#D9# =>  --  0ED0 .. 0ED9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DC# .. 16#DD# =>  --  0EDC .. 0EDD
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_000F : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0F00
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#01# .. 16#03# =>  --  0F01 .. 0F03
          (Other_Symbol, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  0F04
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  0F05
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#06# .. 16#07# =>  --  0F06 .. 0F07
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#08#           =>  --  0F08
          (Other_Punctuation, 0, Other, Other, Other, Glue,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#09# .. 16#0A# =>  --  0F09 .. 0F0A
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  0F0B
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  0F0C
          (Other_Punctuation, 0, Other, Other, Other, Glue,
           (Grapheme_Base => True,
            others => False)),
         16#0D# .. 16#11# =>  --  0F0D .. 0F11
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#12#           =>  --  0F12
          (Other_Punctuation, 0, Other, Other, Other, Glue,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#13#           =>  --  0F13
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#14#           =>  --  0F14
          (Other_Symbol, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#15# .. 16#17# =>  --  0F15 .. 0F17
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#18# .. 16#19# =>  --  0F18 .. 0F19
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#1A# .. 16#1F# =>  --  0F1A .. 0F1F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#20# .. 16#29# =>  --  0F20 .. 0F29
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2A# .. 16#33# =>  --  0F2A .. 0F33
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#34#           =>  --  0F34
          (Other_Symbol, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#35#           =>  --  0F35
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#36#           =>  --  0F36
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#37#           =>  --  0F37
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#38#           =>  --  0F38
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#39#           =>  --  0F39
          (Nonspacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3A#           =>  --  0F3A
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  0F3B
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3C#           =>  --  0F3C
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3D#           =>  --  0F3D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3E# .. 16#3F# =>  --  0F3E .. 0F3F
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#47# =>  --  0F40 .. 0F47
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#49# .. 16#6C# =>  --  0F49 .. 0F6C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#71#           =>  --  0F71
          (Nonspacing_Mark, 129, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#72#           =>  --  0F72
          (Nonspacing_Mark, 130, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#73#           =>  --  0F73
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#74#           =>  --  0F74
          (Nonspacing_Mark, 132, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#75# .. 16#79# =>  --  0F75 .. 0F79
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#7A# .. 16#7D# =>  --  0F7A .. 0F7D
          (Nonspacing_Mark, 130, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#7E#           =>  --  0F7E
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#7F#           =>  --  0F7F
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Break_After,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#80#           =>  --  0F80
          (Nonspacing_Mark, 130, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#81#           =>  --  0F81
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#82# .. 16#83# =>  --  0F82 .. 0F83
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#84#           =>  --  0F84
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#85#           =>  --  0F85
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#86# .. 16#87# =>  --  0F86 .. 0F87
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#88# .. 16#8B# =>  --  0F88 .. 0F8B
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#90# .. 16#97# =>  --  0F90 .. 0F97
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#99# .. 16#BC# =>  --  0F99 .. 0FBC
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BE# .. 16#BF# =>  --  0FBE .. 0FBF
          (Other_Symbol, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#C5# =>  --  0FC0 .. 0FC5
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#C6#           =>  --  0FC6
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C7# .. 16#CC# =>  --  0FC7 .. 0FCC
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#CE# .. 16#CF# =>  --  0FCE .. 0FCF
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  0FD0 .. 0FD1
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#D2#           =>  --  0FD2
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#D3#           =>  --  0FD3
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#D4#           =>  --  0FD4
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0010 : aliased constant Core_Second_Stage
     := (16#2B# .. 16#2C# =>  --  102B .. 102C
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2D# .. 16#30# =>  --  102D .. 1030
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#31#           =>  --  1031
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32# .. 16#36# =>  --  1032 .. 1036
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#37#           =>  --  1037
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#38#           =>  --  1038
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39# .. 16#3A# =>  --  1039 .. 103A
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3B# .. 16#3C# =>  --  103B .. 103C
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D# .. 16#3E# =>  --  103D .. 103E
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#40# .. 16#49# =>  --  1040 .. 1049
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4A# .. 16#4B# =>  --  104A .. 104B
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#4C# .. 16#4F# =>  --  104C .. 104F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#56# .. 16#57# =>  --  1056 .. 1057
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#59# =>  --  1058 .. 1059
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#5E# .. 16#60# =>  --  105E .. 1060
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#62#           =>  --  1062
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#63# .. 16#64# =>  --  1063 .. 1064
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#67# .. 16#68# =>  --  1067 .. 1068
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#69# .. 16#6D# =>  --  1069 .. 106D
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#71# .. 16#74# =>  --  1071 .. 1074
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#82#           =>  --  1082
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#83# .. 16#84# =>  --  1083 .. 1084
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#85# .. 16#86# =>  --  1085 .. 1086
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#87# .. 16#8C# =>  --  1087 .. 108C
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#8D#           =>  --  108D
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#8F#           =>  --  108F
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#90# .. 16#99# =>  --  1090 .. 1099
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9A# .. 16#9D# =>  --  109A .. 109D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9E# .. 16#9F# =>  --  109E .. 109F
          (Other_Symbol, 0, Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#A0# .. 16#C5# =>  --  10A0 .. 10C5
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C6# .. 16#CF# =>  --  10C6 .. 10CF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#FA# =>  --  10D0 .. 10FA
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>  --  10FB
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FC#           =>  --  10FC
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0011 : aliased constant Core_Second_Stage
     := (16#5A# .. 16#5E# =>  --  115A .. 115E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>  --  115F
          (Other_Letter, 0, L, A_Letter, O_Letter, JL,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#60#           =>  --  1160
          (Other_Letter, 0, V, A_Letter, O_Letter, JV,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#61# .. 16#A2# =>  --  1161 .. 11A2
          (Other_Letter, 0, V, A_Letter, O_Letter, JV,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3# .. 16#A7# =>  --  11A3 .. 11A7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A8# .. 16#F9# =>  --  11A8 .. 11F9
          (Other_Letter, 0, T, A_Letter, O_Letter, JT,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, L, A_Letter, O_Letter, JL,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0012 : aliased constant Core_Second_Stage
     := (16#49#           =>  --  1249
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4E# .. 16#4F# =>  --  124E .. 124F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#57#           =>  --  1257
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>  --  1259
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5E# .. 16#5F# =>  --  125E .. 125F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#89#           =>  --  1289
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8E# .. 16#8F# =>  --  128E .. 128F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B1#           =>  --  12B1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B6# .. 16#B7# =>  --  12B6 .. 12B7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BF#           =>  --  12BF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C1#           =>  --  12C1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C6# .. 16#C7# =>  --  12C6 .. 12C7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D7#           =>  --  12D7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0013 : aliased constant Core_Second_Stage
     := (16#11#           =>  --  1311
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#16# .. 16#17# =>  --  1316 .. 1317
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5B# .. 16#5E# =>  --  135B .. 135E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>  --  135F
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#60#           =>  --  1360
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#61#           =>  --  1361
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#62#           =>  --  1362
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#63# .. 16#66# =>  --  1363 .. 1366
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#67# .. 16#68# =>  --  1367 .. 1368
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#69# .. 16#71# =>  --  1369 .. 1371
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Other_ID_Continue
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#72# .. 16#7C# =>  --  1372 .. 137C
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7D# .. 16#7F# =>  --  137D .. 137F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#99# =>  --  1390 .. 1399
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#9A# .. 16#9F# =>  --  139A .. 139F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0014 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  1400
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0015 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0016 : aliased constant Core_Second_Stage
     := (16#6D#           =>  --  166D
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#6E#           =>  --  166E
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#77# .. 16#7F# =>  --  1677 .. 167F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80#           =>  --  1680
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#9B#           =>  --  169B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#9C#           =>  --  169C
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#9D# .. 16#9F# =>  --  169D .. 169F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#EB# .. 16#ED# =>  --  16EB .. 16ED
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#EE# .. 16#F0# =>  --  16EE .. 16F0
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0017 : aliased constant Core_Second_Stage
     := (16#0D#           =>  --  170D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#12# .. 16#13# =>  --  1712 .. 1713
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#14#           =>  --  1714
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#15# .. 16#1F# =>  --  1715 .. 171F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#32# .. 16#33# =>  --  1732 .. 1733
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#34#           =>  --  1734
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#35# .. 16#36# =>  --  1735 .. 1736
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#37# .. 16#3F# =>  --  1737 .. 173F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#52# .. 16#53# =>  --  1752 .. 1753
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#54# .. 16#5F# =>  --  1754 .. 175F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#6D#           =>  --  176D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#71#           =>  --  1771
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#72# .. 16#73# =>  --  1772 .. 1773
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#74# .. 16#7F# =>  --  1774 .. 177F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#A2# =>  --  1780 .. 17A2
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3#           =>  --  17A3
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Deprecated
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A4# .. 16#B3# =>  --  17A4 .. 17B3
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4# .. 16#B5# =>  --  17B4 .. 17B5
          (Format, 0, Control, Format, Format, Complex_Context,
           (Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#B6#           =>  --  17B6
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B7# .. 16#BD# =>  --  17B7 .. 17BD
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#BE# .. 16#C5# =>  --  17BE .. 17C5
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6#           =>  --  17C6
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C7# .. 16#C8# =>  --  17C7 .. 17C8
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9# .. 16#D1# =>  --  17C9 .. 17D1
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D2#           =>  --  17D2
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D3#           =>  --  17D3
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Deprecated
              | Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D4# .. 16#D5# =>  --  17D4 .. 17D5
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D6#           =>  --  17D6
          (Other_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D7#           =>  --  17D7
          (Modifier_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#D8#           =>  --  17D8
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#D9#           =>  --  17D9
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#DA#           =>  --  17DA
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#DB#           =>  --  17DB
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#DC#           =>  --  17DC
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DD#           =>  --  17DD
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#DE# .. 16#DF# =>  --  17DE .. 17DF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E0# .. 16#E9# =>  --  17E0 .. 17E9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EA# .. 16#EF# =>  --  17EA .. 17EF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F9# =>  --  17F0 .. 17F9
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0018 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  1800 .. 1801
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  1802
          (Other_Punctuation, 0, Other, Other, S_Continue, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  1803
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#04# .. 16#05# =>  --  1804 .. 1805
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#06#           =>  --  1806
          (Dash_Punctuation, 0, Other, Other, Other, Break_Before,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#07#           =>  --  1807
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#08#           =>  --  1808
          (Other_Punctuation, 0, Other, Other, S_Continue, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  1809
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  180A
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#0B# .. 16#0D# =>  --  180B .. 180D
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#0E#           =>  --  180E
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>  --  180F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#10# .. 16#19# =>  --  1810 .. 1819
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A# .. 16#1F# =>  --  181A .. 181F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#43#           =>  --  1843
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#78# .. 16#7F# =>  --  1878 .. 187F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>  --  18A9
          (Nonspacing_Mark, 228, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0019 : aliased constant Core_Second_Stage
     := (16#00# .. 16#1C# =>  --  1900 .. 191C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1D# .. 16#1F# =>  --  191D .. 191F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#22# =>  --  1920 .. 1922
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#23# .. 16#26# =>  --  1923 .. 1926
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27# .. 16#28# =>  --  1927 .. 1928
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#29# .. 16#2B# =>  --  1929 .. 192B
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C# .. 16#2F# =>  --  192C .. 192F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#30# .. 16#31# =>  --  1930 .. 1931
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32#           =>  --  1932
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#33# .. 16#38# =>  --  1933 .. 1938
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39#           =>  --  1939
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3A#           =>  --  193A
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3B#           =>  --  193B
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3C# .. 16#3F# =>  --  193C .. 193F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#40#           =>  --  1940
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#41# .. 16#43# =>  --  1941 .. 1943
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#44# .. 16#45# =>  --  1944 .. 1945
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#46# .. 16#4F# =>  --  1946 .. 194F
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6E# .. 16#6F# =>  --  196E .. 196F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#75# .. 16#7F# =>  --  1975 .. 197F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#AA# .. 16#AF# =>  --  19AA .. 19AF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B0# .. 16#C0# =>  --  19B0 .. 19C0
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C8# .. 16#C9# =>  --  19C8 .. 19C9
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA# .. 16#CF# =>  --  19CA .. 19CF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#D9# =>  --  19D0 .. 19D9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DA# .. 16#DD# =>  --  19DA .. 19DD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DE# .. 16#DF# =>  --  19DE .. 19DF
          (Other_Punctuation, 0, Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_001A : aliased constant Core_Second_Stage
     := (16#00# .. 16#16# =>  --  1A00 .. 1A16
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#17#           =>  --  1A17
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#18#           =>  --  1A18
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#19# .. 16#1B# =>  --  1A19 .. 1A1B
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  1A1E .. 1A1F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_001B : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>  --  1B00 .. 1B03
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#04#           =>  --  1B04
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34#           =>  --  1B34
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#35#           =>  --  1B35
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#36# .. 16#3A# =>  --  1B36 .. 1B3A
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3B#           =>  --  1B3B
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3C#           =>  --  1B3C
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3D# .. 16#41# =>  --  1B3D .. 1B41
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#42#           =>  --  1B42
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#43#           =>  --  1B43
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#44#           =>  --  1B44
          (Spacing_Mark, 9, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4C# .. 16#4F# =>  --  1B4C .. 1B4F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#50# .. 16#59# =>  --  1B50 .. 1B59
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#5B# =>  --  1B5A .. 1B5B
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  1B5C
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#5D#           =>  --  1B5D
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#5E# .. 16#5F# =>  --  1B5E .. 1B5F
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#60#           =>  --  1B60
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#61# .. 16#6A# =>  --  1B61 .. 1B6A
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>  --  1B6B
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#6C#           =>  --  1B6C
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#6D# .. 16#73# =>  --  1B6D .. 1B73
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#74# .. 16#7C# =>  --  1B74 .. 1B7C
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7D# .. 16#7F# =>  --  1B7D .. 1B7F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#81# =>  --  1B80 .. 1B81
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#82#           =>  --  1B82
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A1#           =>  --  1BA1
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A2# .. 16#A5# =>  --  1BA2 .. 1BA5
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#A6# .. 16#A7# =>  --  1BA6 .. 1BA7
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A8# .. 16#A9# =>  --  1BA8 .. 1BA9
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AA#           =>  --  1BAA
          (Spacing_Mark, 9, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AB# .. 16#AD# =>  --  1BAB .. 1BAD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B0# .. 16#B9# =>  --  1BB0 .. 1BB9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_001C : aliased constant Core_Second_Stage
     := (16#00# .. 16#23# =>  --  1C00 .. 1C23
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#24# .. 16#2B# =>  --  1C24 .. 1C2B
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C# .. 16#33# =>  --  1C2C .. 1C33
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#34# .. 16#35# =>  --  1C34 .. 1C35
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#36#           =>  --  1C36
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Extender
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#37#           =>  --  1C37
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3B# .. 16#3C# =>  --  1C3B .. 1C3C
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3D# .. 16#3F# =>  --  1C3D .. 1C3F
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#40# .. 16#49# =>  --  1C40 .. 1C49
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D# .. 16#4F# =>  --  1C4D .. 1C4F
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#50# .. 16#59# =>  --  1C50 .. 1C59
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#77# =>  --  1C5A .. 1C77
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78# .. 16#7A# =>  --  1C78 .. 1C7A
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#7B#           =>  --  1C7B
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#7C# .. 16#7D# =>  --  1C7C .. 1C7D
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#7E# .. 16#7F# =>  --  1C7E .. 1C7F
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_001D : aliased constant Core_Second_Stage
     := (16#2C# .. 16#61# =>  --  1D2C .. 1D61
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#62#           =>  --  1D62
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#63# .. 16#6A# =>  --  1D63 .. 1D6A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#78#           =>  --  1D78
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#79#           =>  --  1D79
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>  --  1D7D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#96#           =>  --  1D96
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#9B# .. 16#A3# =>  --  1D9B .. 1DA3
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#A4#           =>  --  1DA4
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#A5# .. 16#A7# =>  --  1DA5 .. 1DA7
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#A8#           =>  --  1DA8
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#A9# .. 16#BF# =>  --  1DA9 .. 1DBF
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#C0# .. 16#C1# =>  --  1DC0 .. 1DC1
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C2#           =>  --  1DC2
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C3#           =>  --  1DC3
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C4# .. 16#C9# =>  --  1DC4 .. 1DC9
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CA#           =>  --  1DCA
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CB# .. 16#CC# =>  --  1DCB .. 1DCC
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CD#           =>  --  1DCD
          (Nonspacing_Mark, 234, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CE#           =>  --  1DCE
          (Nonspacing_Mark, 214, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#CF#           =>  --  1DCF
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D0#           =>  --  1DD0
          (Nonspacing_Mark, 202, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D1# .. 16#E6# =>  --  1DD1 .. 1DE6
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E7# .. 16#FD# =>  --  1DE7 .. 1DFD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#FE#           =>  --  1DFE
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)));

   Group_001E : aliased constant Core_Second_Stage
     := (16#00#           =>  --  1E00
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#02#           =>  --  1E02
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#04#           =>  --  1E04
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#06#           =>  --  1E06
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#08#           =>  --  1E08
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0A#           =>  --  1E0A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0C#           =>  --  1E0C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0E#           =>  --  1E0E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#10#           =>  --  1E10
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#12#           =>  --  1E12
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#14#           =>  --  1E14
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#16#           =>  --  1E16
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#18#           =>  --  1E18
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1A#           =>  --  1E1A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1C#           =>  --  1E1C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1E#           =>  --  1E1E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#20#           =>  --  1E20
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#22#           =>  --  1E22
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#24#           =>  --  1E24
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#26#           =>  --  1E26
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#28#           =>  --  1E28
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2A#           =>  --  1E2A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2C#           =>  --  1E2C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2D#           =>  --  1E2D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2E#           =>  --  1E2E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#30#           =>  --  1E30
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#32#           =>  --  1E32
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#34#           =>  --  1E34
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#36#           =>  --  1E36
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#38#           =>  --  1E38
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3A#           =>  --  1E3A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3C#           =>  --  1E3C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3E#           =>  --  1E3E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#40#           =>  --  1E40
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#42#           =>  --  1E42
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#44#           =>  --  1E44
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#46#           =>  --  1E46
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#48#           =>  --  1E48
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4A#           =>  --  1E4A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4C#           =>  --  1E4C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4E#           =>  --  1E4E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#50#           =>  --  1E50
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#52#           =>  --  1E52
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#54#           =>  --  1E54
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#56#           =>  --  1E56
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#58#           =>  --  1E58
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5A#           =>  --  1E5A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5C#           =>  --  1E5C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5E#           =>  --  1E5E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#60#           =>  --  1E60
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#62#           =>  --  1E62
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#64#           =>  --  1E64
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#66#           =>  --  1E66
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#68#           =>  --  1E68
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6A#           =>  --  1E6A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6C#           =>  --  1E6C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6E#           =>  --  1E6E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#70#           =>  --  1E70
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#72#           =>  --  1E72
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#74#           =>  --  1E74
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#76#           =>  --  1E76
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#78#           =>  --  1E78
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7A#           =>  --  1E7A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7C#           =>  --  1E7C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7E#           =>  --  1E7E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#80#           =>  --  1E80
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#82#           =>  --  1E82
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#84#           =>  --  1E84
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#86#           =>  --  1E86
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#88#           =>  --  1E88
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8A#           =>  --  1E8A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8C#           =>  --  1E8C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8E#           =>  --  1E8E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#90#           =>  --  1E90
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#92#           =>  --  1E92
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#94#           =>  --  1E94
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#9C# .. 16#9D# =>  --  1E9C .. 1E9D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#9E#           =>  --  1E9E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#9F#           =>  --  1E9F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#A0#           =>  --  1EA0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A2#           =>  --  1EA2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A4#           =>  --  1EA4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A6#           =>  --  1EA6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A8#           =>  --  1EA8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#AA#           =>  --  1EAA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#AC#           =>  --  1EAC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#AE#           =>  --  1EAE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B0#           =>  --  1EB0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B2#           =>  --  1EB2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B4#           =>  --  1EB4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B6#           =>  --  1EB6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B8#           =>  --  1EB8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#BA#           =>  --  1EBA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#BC#           =>  --  1EBC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#BE#           =>  --  1EBE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C0#           =>  --  1EC0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C2#           =>  --  1EC2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C4#           =>  --  1EC4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C6#           =>  --  1EC6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C8#           =>  --  1EC8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CA#           =>  --  1ECA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CB#           =>  --  1ECB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CC#           =>  --  1ECC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CE#           =>  --  1ECE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D0#           =>  --  1ED0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D2#           =>  --  1ED2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D4#           =>  --  1ED4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D6#           =>  --  1ED6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D8#           =>  --  1ED8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DA#           =>  --  1EDA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DC#           =>  --  1EDC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DE#           =>  --  1EDE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E0#           =>  --  1EE0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E2#           =>  --  1EE2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E4#           =>  --  1EE4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E6#           =>  --  1EE6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E8#           =>  --  1EE8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EA#           =>  --  1EEA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EC#           =>  --  1EEC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EE#           =>  --  1EEE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F0#           =>  --  1EF0
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F2#           =>  --  1EF2
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F4#           =>  --  1EF4
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F6#           =>  --  1EF6
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F8#           =>  --  1EF8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FA#           =>  --  1EFA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FC#           =>  --  1EFC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FE#           =>  --  1EFE
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)));

   Group_001F : aliased constant Core_Second_Stage
     := (16#08# .. 16#0F# =>  --  1F08 .. 1F0F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#16# .. 16#17# =>  --  1F16 .. 1F17
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#18# .. 16#1D# =>  --  1F18 .. 1F1D
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  1F1E .. 1F1F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#28# .. 16#2F# =>  --  1F28 .. 1F2F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#38# .. 16#3F# =>  --  1F38 .. 1F3F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#46# .. 16#47# =>  --  1F46 .. 1F47
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#48# .. 16#4D# =>  --  1F48 .. 1F4D
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4E# .. 16#4F# =>  --  1F4E .. 1F4F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#58#           =>  --  1F58
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>  --  1F59
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5A#           =>  --  1F5A
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5B#           =>  --  1F5B
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5C#           =>  --  1F5C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5D#           =>  --  1F5D
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5E#           =>  --  1F5E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>  --  1F5F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#68# .. 16#6F# =>  --  1F68 .. 1F6F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7E# .. 16#7F# =>  --  1F7E .. 1F7F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#88# .. 16#8F# =>  --  1F88 .. 1F8F
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#98# .. 16#9F# =>  --  1F98 .. 1F9F
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A8# .. 16#AF# =>  --  1FA8 .. 1FAF
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>  --  1FB5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B8# .. 16#BB# =>  --  1FB8 .. 1FBB
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#BC#           =>  --  1FBC
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>  --  1FBD
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#BF# .. 16#C1# =>  --  1FBF .. 1FC1
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#C5#           =>  --  1FC5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C8# .. 16#CB# =>  --  1FC8 .. 1FCB
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CC#           =>  --  1FCC
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CD# .. 16#CF# =>  --  1FCD .. 1FCF
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#D4# .. 16#D5# =>  --  1FD4 .. 1FD5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#DB# =>  --  1FD8 .. 1FDB
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DC#           =>  --  1FDC
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DD# .. 16#DF# =>  --  1FDD .. 1FDF
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#E8# .. 16#EC# =>  --  1FE8 .. 1FEC
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#ED# .. 16#EF# =>  --  1FED .. 1FEF
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#F0# .. 16#F1# =>  --  1FF0 .. 1FF1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F5#           =>  --  1FF5
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F8# .. 16#FB# =>  --  1FF8 .. 1FFB
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FC#           =>  --  1FFC
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FD#           =>  --  1FFD
          (Modifier_Symbol, 0, Other, Other, Other, Break_Before,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#FE#           =>  --  1FFE
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)));

   Group_0020 : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>  --  2000 .. 2006
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#07#           =>  --  2007
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#08# .. 16#0A# =>  --  2008 .. 200A
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  200B
          (Format, 0, Control, Format, Format, ZW_Space,
           (Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#0C# .. 16#0D# =>  --  200C .. 200D
          (Format, 0, Extend, Extend, Extend, Combining_Mark,
           (Join_Control
              | Other_Grapheme_Extend
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | Case_Ignorable => True,
            others => False)),
         16#0E# .. 16#0F# =>  --  200E .. 200F
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Pattern_White_Space
              | Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#10#           =>  --  2010
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>  --  2011
          (Dash_Punctuation, 0, Other, Other, Other, Glue,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#12#           =>  --  2012
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#13#           =>  --  2013
          (Dash_Punctuation, 0, Other, Other, S_Continue, Break_After,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>  --  2014
          (Dash_Punctuation, 0, Other, Other, S_Continue, Break_Both,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  2015
          (Dash_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  2016
          (Other_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#17#           =>  --  2017
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  2018
          (Initial_Punctuation, 0, Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  2019
          (Final_Punctuation, 0, Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  201A
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1B# .. 16#1C# =>  --  201B .. 201C
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  201D
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E#           =>  --  201E
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1F#           =>  --  201F
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#21# =>  --  2020 .. 2021
          (Other_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#22# .. 16#23# =>  --  2022 .. 2023
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  2024
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Inseparable,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25# .. 16#26# =>  --  2025 .. 2026
          (Other_Punctuation, 0, Other, Other, Other, Inseparable,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>  --  2027
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#28#           =>  --  2028
          (Line_Separator, 0, Control, Newline, Sep, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#29#           =>  --  2029
          (Paragraph_Separator, 0, Control, Newline, Sep, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#2A# .. 16#2E# =>  --  202A .. 202E
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#2F#           =>  --  202F
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#31# =>  --  2030 .. 2031
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#32# .. 16#34# =>  --  2032 .. 2034
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#35# .. 16#37# =>  --  2035 .. 2037
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#38#           =>  --  2038
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#39#           =>  --  2039
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#3A#           =>  --  203A
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  203B
          (Other_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3D# =>  --  203C .. 203D
          (Other_Punctuation, 0, Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3E#           =>  --  203E
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3F#           =>  --  203F
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40#           =>  --  2040
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Other_Math
              | Grapheme_Base
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#43# =>  --  2041 .. 2043
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#44#           =>  --  2044
          (Math_Symbol, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#45#           =>  --  2045
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#46#           =>  --  2046
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47# .. 16#49# =>  --  2047 .. 2049
          (Other_Punctuation, 0, Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#4A# .. 16#51# =>  --  204A .. 2051
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#52#           =>  --  2052
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#53#           =>  --  2053
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#54#           =>  --  2054
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55#           =>  --  2055
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#56#           =>  --  2056
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#57#           =>  --  2057
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#58# .. 16#5B# =>  --  2058 .. 205B
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  205C
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D# .. 16#5E# =>  --  205D .. 205E
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5F#           =>  --  205F
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#60#           =>  --  2060
          (Format, 0, Control, Format, Format, Word_Joiner,
           (Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#61# .. 16#64# =>  --  2061 .. 2064
          (Format, 0, Control, Format, Format, Alphabetic,
           (Other_Math
              | Default_Ignorable_Code_Point
              | Math
              | Case_Ignorable => True,
            others => False)),
         16#65# .. 16#69# =>  --  2065 .. 2069
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#6A# .. 16#6F# =>  --  206A .. 206F
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Deprecated
              | Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#70#           =>  --  2070
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>  --  2071
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#74#           =>  --  2074
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#75# .. 16#79# =>  --  2075 .. 2079
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7A#           =>  --  207A
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#7B#           =>  --  207B
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7C#           =>  --  207C
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#7D#           =>  --  207D
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7E#           =>  --  207E
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7F#           =>  --  207F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#80#           =>  --  2080
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#81# .. 16#84# =>  --  2081 .. 2084
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#85# .. 16#89# =>  --  2085 .. 2089
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8A#           =>  --  208A
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#8B#           =>  --  208B
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8C#           =>  --  208C
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#8D#           =>  --  208D
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8E#           =>  --  208E
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#90# .. 16#94# =>  --  2090 .. 2094
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#A0# .. 16#A6# =>  --  20A0 .. 20A6
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#A7#           =>  --  20A7
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#A8# .. 16#B5# =>  --  20A8 .. 20B5
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  20D0 .. 20D1
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D2# .. 16#D3# =>  --  20D2 .. 20D3
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D4# .. 16#D7# =>  --  20D4 .. 20D7
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#D8# .. 16#DA# =>  --  20D8 .. 20DA
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#DB# .. 16#DC# =>  --  20DB .. 20DC
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#DD# .. 16#E0# =>  --  20DD .. 20E0
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Case_Ignorable => True,
            others => False)),
         16#E1#           =>  --  20E1
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E2# .. 16#E4# =>  --  20E2 .. 20E4
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Case_Ignorable => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  20E5 .. 20E6
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E7#           =>  --  20E7
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E8#           =>  --  20E8
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#E9#           =>  --  20E9
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#EA#           =>  --  20EA
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#EB#           =>  --  20EB
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#EC# .. 16#EF# =>  --  20EC .. 20EF
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#F0#           =>  --  20F0
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0021 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  2100 .. 2101
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  2102
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#03#           =>  --  2103
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  2104
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  2105
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#06#           =>  --  2106
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#07#           =>  --  2107
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#08#           =>  --  2108
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  2109
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  210A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#0B# .. 16#0D# =>  --  210B .. 210D
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#0E# .. 16#0F# =>  --  210E .. 210F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#10# .. 16#12# =>  --  2110 .. 2112
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#13#           =>  --  2113
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#14#           =>  --  2114
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  2115
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#16#           =>  --  2116
          (Other_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  2117
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  2118
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#19# .. 16#1D# =>  --  2119 .. 211D
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#1E# .. 16#20# =>  --  211E .. 2120
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#21# .. 16#22# =>  --  2121 .. 2122
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  2123
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  2124
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#25#           =>  --  2125
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  2126
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27#           =>  --  2127
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  2128
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#29#           =>  --  2129
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2A#           =>  --  212A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2B#           =>  --  212B
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2C# .. 16#2D# =>  --  212C .. 212D
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#2E#           =>  --  212E
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2F#           =>  --  212F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#30# .. 16#31# =>  --  2130 .. 2131
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#32#           =>  --  2132
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#33#           =>  --  2133
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#34#           =>  --  2134
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#35# .. 16#38# =>  --  2135 .. 2138
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#39#           =>  --  2139
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#3A# .. 16#3B# =>  --  213A .. 213B
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3D# =>  --  213C .. 213D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#3E# .. 16#3F# =>  --  213E .. 213F
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#40# .. 16#44# =>  --  2140 .. 2144
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#45#           =>  --  2145
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#46# .. 16#47# =>  --  2146 .. 2147
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#48# .. 16#49# =>  --  2148 .. 2149
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#4A#           =>  --  214A
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#4B#           =>  --  214B
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#4C# .. 16#4D# =>  --  214C .. 214D
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#4E#           =>  --  214E
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4F#           =>  --  214F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#52# =>  --  2150 .. 2152
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#53#           =>  --  2153
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#54# .. 16#55# =>  --  2154 .. 2155
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#56# .. 16#5A# =>  --  2156 .. 215A
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5B#           =>  --  215B
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#5C# .. 16#5D# =>  --  215C .. 215D
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  215E
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#5F#           =>  --  215F
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60# .. 16#6B# =>  --  2160 .. 216B
          (Letter_Number, 0, Other, A_Letter, Upper, Ambiguous,
           (Other_Uppercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6C# .. 16#6F# =>  --  216C .. 216F
          (Letter_Number, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Uppercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#70# .. 16#79# =>  --  2170 .. 2179
          (Letter_Number, 0, Other, A_Letter, Lower, Ambiguous,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7A# .. 16#7F# =>  --  217A .. 217F
          (Letter_Number, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#80# .. 16#82# =>  --  2180 .. 2182
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#83#           =>  --  2183
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#84#           =>  --  2184
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85# .. 16#88# =>  --  2185 .. 2188
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#89# .. 16#8F# =>  --  2189 .. 218F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#94# =>  --  2190 .. 2194
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95# .. 16#99# =>  --  2195 .. 2199
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9A# .. 16#9B# =>  --  219A .. 219B
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A0#           =>  --  21A0
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A3#           =>  --  21A3
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A6#           =>  --  21A6
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A8#           =>  --  21A8
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AE#           =>  --  21AE
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AF#           =>  --  21AF
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B2# .. 16#B5# =>  --  21B2 .. 21B5
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B8# .. 16#BB# =>  --  21B8 .. 21BB
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CE# .. 16#CF# =>  --  21CE .. 21CF
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D2#           =>  --  21D2
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D4#           =>  --  21D4
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DC#           =>  --  21DC
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#DE# .. 16#E3# =>  --  21DE .. 21E3
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E6# .. 16#F3# =>  --  21E6 .. 21F3
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

   Group_0022 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  2200
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#02# .. 16#03# =>  --  2202 .. 2203
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#07# .. 16#08# =>  --  2207 .. 2208
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0B#           =>  --  220B
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0F#           =>  --  220F
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#11#           =>  --  2211
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#12#           =>  --  2212
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#13#           =>  --  2213
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#15#           =>  --  2215
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#1A#           =>  --  221A
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#1D# .. 16#20# =>  --  221D .. 2220
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#23#           =>  --  2223
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#25#           =>  --  2225
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#27# .. 16#2C# =>  --  2227 .. 222C
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2E#           =>  --  222E
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#34# .. 16#37# =>  --  2234 .. 2237
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3C# .. 16#3D# =>  --  223C .. 223D
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#48#           =>  --  2248
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#4C#           =>  --  224C
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#52#           =>  --  2252
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#60# .. 16#61# =>  --  2260 .. 2261
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#64# .. 16#67# =>  --  2264 .. 2267
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6A# .. 16#6B# =>  --  226A .. 226B
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6E# .. 16#6F# =>  --  226E .. 226F
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#82# .. 16#83# =>  --  2282 .. 2283
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#86# .. 16#87# =>  --  2286 .. 2287
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95#           =>  --  2295
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#99#           =>  --  2299
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A5#           =>  --  22A5
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#BF#           =>  --  22BF
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

   Group_0023 : aliased constant Core_Second_Stage
     := (16#08# .. 16#0B# =>  --  2308 .. 230B
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#12#           =>  --  2312
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#21# =>  --  2320 .. 2321
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#29#           =>  --  2329
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A#           =>  --  232A
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7C#           =>  --  237C
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9B# .. 16#B3# =>  --  239B .. 23B3
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B4# .. 16#B5# =>  --  23B4 .. 23B5
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B7#           =>  --  23B7
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D0#           =>  --  23D0
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DC# .. 16#E1# =>  --  23DC .. 23E1
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E2#           =>  --  23E2
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

   Group_0024 : aliased constant Core_Second_Stage
     := (16#00# .. 16#26# =>  --  2400 .. 2426
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27# .. 16#3F# =>  --  2427 .. 243F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#40# .. 16#4A# =>  --  2440 .. 244A
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#4B# .. 16#5F# =>  --  244B .. 245F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#9C# .. 16#B5# =>  --  249C .. 24B5
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#B6# .. 16#CF# =>  --  24B6 .. 24CF
          (Other_Symbol, 0, Other, A_Letter, Upper, Ambiguous,
           (Other_Alphabetic
              | Other_Uppercase
              | Alphabetic
              | Grapheme_Base
              | Uppercase
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D0# .. 16#E9# =>  --  24D0 .. 24E9
          (Other_Symbol, 0, Other, A_Letter, Lower, Ambiguous,
           (Other_Alphabetic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | Lowercase
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)));

   Group_0025 : aliased constant Core_Second_Stage
     := (16#4C# .. 16#4F# =>  --  254C .. 254F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#75# .. 16#7F# =>  --  2575 .. 257F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#90# .. 16#91# =>  --  2590 .. 2591
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#96# .. 16#9F# =>  --  2596 .. 259F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A0# .. 16#A1# =>  --  25A0 .. 25A1
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A2#           =>  --  25A2
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AA# .. 16#AD# =>  --  25AA .. 25AD
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AE# .. 16#B1# =>  --  25AE .. 25B1
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B2# .. 16#B3# =>  --  25B2 .. 25B3
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B4# .. 16#B5# =>  --  25B4 .. 25B5
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B6#           =>  --  25B6
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B7#           =>  --  25B7
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B8# .. 16#BB# =>  --  25B8 .. 25BB
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#BC# .. 16#BD# =>  --  25BC .. 25BD
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#BE# .. 16#BF# =>  --  25BE .. 25BF
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C0#           =>  --  25C0
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C1#           =>  --  25C1
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C2# .. 16#C5# =>  --  25C2 .. 25C5
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#C6# .. 16#C7# =>  --  25C6 .. 25C7
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C9#           =>  --  25C9
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CA#           =>  --  25CA
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CB#           =>  --  25CB
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CC# .. 16#CD# =>  --  25CC .. 25CD
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CF# .. 16#D1# =>  --  25CF .. 25D1
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D2# .. 16#D3# =>  --  25D2 .. 25D3
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D4# .. 16#E1# =>  --  25D4 .. 25E1
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E2#           =>  --  25E2
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E4#           =>  --  25E4
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E6#           =>  --  25E6
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E7# .. 16#EC# =>  --  25E7 .. 25EC
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#ED# .. 16#EE# =>  --  25ED .. 25EE
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#F0# .. 16#F7# =>  --  25F0 .. 25F7
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

   Group_0026 : aliased constant Core_Second_Stage
     := (16#05# .. 16#06# =>  --  2605 .. 2606
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#09#           =>  --  2609
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#0F# =>  --  260E .. 260F
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14# .. 16#17# =>  --  2614 .. 2617
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  261C
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1E#           =>  --  261E
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  2640
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#42#           =>  --  2642
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#60# .. 16#61# =>  --  2660 .. 2661
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#62#           =>  --  2662
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#63#           =>  --  2663
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#64# .. 16#65# =>  --  2664 .. 2665
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#67# .. 16#6A# =>  --  2667 .. 266A
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6C#           =>  --  266C
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6D#           =>  --  266D
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6E#           =>  --  266E
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6F#           =>  --  266F
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9E# .. 16#9F# =>  --  269E .. 269F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#BD# .. 16#BF# =>  --  26BD .. 26BF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

   Group_0027 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  2700
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#05#           =>  --  2705
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#0A# .. 16#0B# =>  --  270A .. 270B
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#28#           =>  --  2728
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#4C#           =>  --  274C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#4E#           =>  --  274E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#53# .. 16#55# =>  --  2753 .. 2755
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#57#           =>  --  2757
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#5B# .. 16#5E# =>  --  275B .. 275E
          (Other_Symbol, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5F# .. 16#60# =>  --  275F .. 2760
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#62# .. 16#63# =>  --  2762 .. 2763
          (Other_Symbol, 0, Other, Other, Other, Exclamation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#68#           =>  --  2768
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#69#           =>  --  2769
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6A#           =>  --  276A
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6B#           =>  --  276B
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6C#           =>  --  276C
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6D#           =>  --  276D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6E#           =>  --  276E
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6F#           =>  --  276F
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#70#           =>  --  2770
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#71#           =>  --  2771
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#72#           =>  --  2772
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#73#           =>  --  2773
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#74#           =>  --  2774
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#75#           =>  --  2775
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#76# .. 16#93# =>  --  2776 .. 2793
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#95# .. 16#97# =>  --  2795 .. 2797
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#B0#           =>  --  27B0
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#BF#           =>  --  27BF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#C0# .. 16#C4# =>  --  27C0 .. 27C4
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C5#           =>  --  27C5
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C6#           =>  --  27C6
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C7# .. 16#CA# =>  --  27C7 .. 27CA
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CB#           =>  --  27CB
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#CC#           =>  --  27CC
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CD# .. 16#CF# =>  --  27CD .. 27CF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#D0# .. 16#E5# =>  --  27D0 .. 27E5
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E6#           =>  --  27E6
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E7#           =>  --  27E7
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E8#           =>  --  27E8
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E9#           =>  --  27E9
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EA#           =>  --  27EA
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EB#           =>  --  27EB
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EC#           =>  --  27EC
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#ED#           =>  --  27ED
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EE#           =>  --  27EE
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EF#           =>  --  27EF
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

   Group_0028 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

   Group_0029 : aliased constant Core_Second_Stage
     := (16#83#           =>  --  2983
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#84#           =>  --  2984
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>  --  2985
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#86#           =>  --  2986
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#87#           =>  --  2987
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#88#           =>  --  2988
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#89#           =>  --  2989
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8A#           =>  --  298A
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8B#           =>  --  298B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8C#           =>  --  298C
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8D#           =>  --  298D
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8E#           =>  --  298E
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8F#           =>  --  298F
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#90#           =>  --  2990
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#91#           =>  --  2991
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#92#           =>  --  2992
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#93#           =>  --  2993
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#94#           =>  --  2994
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95#           =>  --  2995
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#96#           =>  --  2996
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#97#           =>  --  2997
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#98#           =>  --  2998
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8#           =>  --  29D8
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D9#           =>  --  29D9
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DA#           =>  --  29DA
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DB#           =>  --  29DB
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#FC#           =>  --  29FC
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#FD#           =>  --  29FD
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

   Group_002A : aliased constant Core_Second_Stage
     := (others           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

   Group_002B : aliased constant Core_Second_Stage
     := (16#00# .. 16#2F# =>  --  2B00 .. 2B2F
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#44# =>  --  2B30 .. 2B44
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#45# .. 16#46# =>  --  2B45 .. 2B46
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47# .. 16#4C# =>  --  2B47 .. 2B4C
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#50# .. 16#54# =>  --  2B50 .. 2B54
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)));

   Group_002C : aliased constant Core_Second_Stage
     := (16#2F#           =>  --  2C2F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#30# .. 16#5E# =>  --  2C30 .. 2C5E
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5F#           =>  --  2C5F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#61#           =>  --  2C61
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65# .. 16#66# =>  --  2C65 .. 2C66
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>  --  2C68
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6A#           =>  --  2C6A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6C#           =>  --  2C6C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#70#           =>  --  2C70
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#71#           =>  --  2C71
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#73#           =>  --  2C73
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#74#           =>  --  2C74
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#76#           =>  --  2C76
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77# .. 16#7B# =>  --  2C77 .. 2C7B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#7C#           =>  --  2C7C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#7D#           =>  --  2C7D
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#7E# .. 16#7F# =>  --  2C7E .. 2C7F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#81#           =>  --  2C81
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>  --  2C83
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85#           =>  --  2C85
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#87#           =>  --  2C87
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#89#           =>  --  2C89
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8B#           =>  --  2C8B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>  --  2C8D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8F#           =>  --  2C8F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#91#           =>  --  2C91
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#93#           =>  --  2C93
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>  --  2C95
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#97#           =>  --  2C97
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#99#           =>  --  2C99
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9B#           =>  --  2C9B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9D#           =>  --  2C9D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9F#           =>  --  2C9F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A1#           =>  --  2CA1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>  --  2CA3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>  --  2CA5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A7#           =>  --  2CA7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A9#           =>  --  2CA9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AB#           =>  --  2CAB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AD#           =>  --  2CAD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AF#           =>  --  2CAF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B1#           =>  --  2CB1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B3#           =>  --  2CB3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>  --  2CB5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B7#           =>  --  2CB7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>  --  2CB9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BB#           =>  --  2CBB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>  --  2CBD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BF#           =>  --  2CBF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C1#           =>  --  2CC1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C3#           =>  --  2CC3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C5#           =>  --  2CC5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C7#           =>  --  2CC7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C9#           =>  --  2CC9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CB#           =>  --  2CCB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CD#           =>  --  2CCD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CF#           =>  --  2CCF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D1#           =>  --  2CD1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D3#           =>  --  2CD3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D5#           =>  --  2CD5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D7#           =>  --  2CD7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D9#           =>  --  2CD9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DB#           =>  --  2CDB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DD#           =>  --  2CDD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>  --  2CDF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>  --  2CE1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>  --  2CE3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E4#           =>  --  2CE4
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#E5# .. 16#EA# =>  --  2CE5 .. 2CEA
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#EB# .. 16#F8# =>  --  2CEB .. 2CF8
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F9#           =>  --  2CF9
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#FA# .. 16#FC# =>  --  2CFA .. 2CFC
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>  --  2CFD
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FE#           =>  --  2CFE
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)));

   Group_002D : aliased constant Core_Second_Stage
     := (16#00# .. 16#25# =>  --  2D00 .. 2D25
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#26# .. 16#2F# =>  --  2D26 .. 2D2F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6E# =>  --  2D66 .. 2D6E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#6F#           =>  --  2D6F
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#70# .. 16#7F# =>  --  2D70 .. 2D7F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#97# .. 16#9F# =>  --  2D97 .. 2D9F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A7#           =>  --  2DA7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#AF#           =>  --  2DAF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B7#           =>  --  2DB7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BF#           =>  --  2DBF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7#           =>  --  2DC7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CF#           =>  --  2DCF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D7#           =>  --  2DD7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DF#           =>  --  2DDF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_002E : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  2E00 .. 2E01
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  2E02
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  2E03
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  2E04
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  2E05
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#06# .. 16#08# =>  --  2E06 .. 2E08
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  2E09
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  2E0A
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  2E0B
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  2E0C
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  2E0D
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#15# =>  --  2E0E .. 2E15
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  2E16
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  2E17
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  2E18
          (Other_Punctuation, 0, Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  2E19
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  2E1A
          (Dash_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>  --  2E1B
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  2E1C
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  2E1D
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  2E1E .. 2E1F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  2E20
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>  --  2E21
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>  --  2E22
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  2E23
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  2E24
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>  --  2E25
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  2E26
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>  --  2E27
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  2E28
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>  --  2E29
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A# .. 16#2D# =>  --  2E2A .. 2E2D
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>  --  2E2E
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  2E2F
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Pattern_Syntax
              | Alphabetic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#30#           =>  --  2E30
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31# .. 16#7F# =>  --  2E31 .. 2E7F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#9A#           =>  --  2E9A
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Radical
              | Grapheme_Base => True,
            others => False)));

   Group_002F : aliased constant Core_Second_Stage
     := (16#D6# .. 16#EF# =>  --  2FD6 .. 2FEF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F1# =>  --  2FF0 .. 2FF1
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (IDS_Binary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#F2# .. 16#F3# =>  --  2FF2 .. 2FF3
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (IDS_Trinary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#FB# =>  --  2FF4 .. 2FFB
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (IDS_Binary_Operator
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Radical
              | Grapheme_Base => True,
            others => False)));

   Group_0030 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  3000
          (Space_Separator, 0, Other, Other, Sp, Ideographic,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#01#           =>  --  3001
          (Other_Punctuation, 0, Other, Other, S_Continue, Close_Punctuation,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  3002
          (Other_Punctuation, 0, Other, Other, S_Term, Close_Punctuation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  3003
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  3004
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  3005
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#06#           =>  --  3006
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#07#           =>  --  3007
          (Letter_Number, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>  --  3008
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  3009
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  300A
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  300B
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  300C
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  300D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>  --  300E
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>  --  300F
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#10#           =>  --  3010
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>  --  3011
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#12# .. 16#13# =>  --  3012 .. 3013
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>  --  3014
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  3015
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  3016
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  3017
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  3018
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  3019
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  301A
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>  --  301B
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  301C
          (Dash_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  301D
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  301E .. 301F
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  3020
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21# .. 16#29# =>  --  3021 .. 3029
          (Letter_Number, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A#           =>  --  302A
          (Nonspacing_Mark, 218, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2B#           =>  --  302B
          (Nonspacing_Mark, 228, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2C#           =>  --  302C
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2D#           =>  --  302D
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2E# .. 16#2F# =>  --  302E .. 302F
          (Nonspacing_Mark, 224, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#30#           =>  --  3030
          (Dash_Punctuation, 0, Other, Other, Other, Ideographic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31# .. 16#35# =>  --  3031 .. 3035
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Ideographic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#36# .. 16#37# =>  --  3036 .. 3037
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#38# .. 16#3A# =>  --  3038 .. 303A
          (Letter_Number, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3B#           =>  --  303B
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#3C#           =>  --  303C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3D#           =>  --  303D
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#3E# .. 16#3F# =>  --  303E .. 303F
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  3040
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#41#           =>  --  3041
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#42#           =>  --  3042
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>  --  3043
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#44#           =>  --  3044
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>  --  3045
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46#           =>  --  3046
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47#           =>  --  3047
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#48#           =>  --  3048
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#49#           =>  --  3049
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4A# .. 16#62# =>  --  304A .. 3062
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#63#           =>  --  3063
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#64# .. 16#82# =>  --  3064 .. 3082
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#83#           =>  --  3083
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>  --  3084
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#85#           =>  --  3085
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#86#           =>  --  3086
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87#           =>  --  3087
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88# .. 16#8D# =>  --  3088 .. 308D
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E#           =>  --  308E
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8F# .. 16#94# =>  --  308F .. 3094
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#95# .. 16#96# =>  --  3095 .. 3096
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#97# .. 16#98# =>  --  3097 .. 3098
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#99# .. 16#9A# =>  --  3099 .. 309A
          (Nonspacing_Mark, 8, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#9B# .. 16#9C# =>  --  309B .. 309C
          (Modifier_Symbol, 0, Other, Katakana, Other, Nonstarter,
           (Diacritic
              | Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Case_Ignorable => True,
            others => False)),
         16#9D# .. 16#9E# =>  --  309D .. 309E
          (Modifier_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#9F#           =>  --  309F
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0#           =>  --  30A0
          (Dash_Punctuation, 0, Other, Katakana, Other, Nonstarter,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#A1#           =>  --  30A1
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3#           =>  --  30A3
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>  --  30A5
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>  --  30A7
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A9#           =>  --  30A9
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C3#           =>  --  30C3
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E3#           =>  --  30E3
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5#           =>  --  30E5
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E7#           =>  --  30E7
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EE#           =>  --  30EE
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F5# .. 16#F6# =>  --  30F5 .. 30F6
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>  --  30FB
          (Other_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#FC#           =>  --  30FC
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#FD# .. 16#FE# =>  --  30FD .. 30FE
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0031 : aliased constant Core_Second_Stage
     := (16#00# .. 16#04# =>  --  3100 .. 3104
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#2E# .. 16#30# =>  --  312E .. 3130
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#64#           =>  --  3164
          (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8F#           =>  --  318F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#91# =>  --  3190 .. 3191
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#92# .. 16#95# =>  --  3192 .. 3195
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#96# .. 16#9F# =>  --  3196 .. 319F
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#B8# .. 16#BF# =>  --  31B8 .. 31BF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C0# .. 16#E3# =>  --  31C0 .. 31E3
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#E4# .. 16#EF# =>  --  31E4 .. 31EF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0032 : aliased constant Core_Second_Stage
     := (16#1F#           =>  --  321F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#29# =>  --  3220 .. 3229
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#44# .. 16#4F# =>  --  3244 .. 324F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51# .. 16#5F# =>  --  3251 .. 325F
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#89# =>  --  3280 .. 3289
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#B1# .. 16#BF# =>  --  32B1 .. 32BF
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#FE# =>  --  32D0 .. 32FE
          (Other_Symbol, 0, Other, Katakana, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)));

   Group_0033 : aliased constant Core_Second_Stage
     := (16#00# .. 16#57# =>  --  3300 .. 3357
          (Other_Symbol, 0, Other, Katakana, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)));

   Group_0034 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_004D : aliased constant Core_Second_Stage
     := (16#B6# .. 16#BF# =>  --  4DB6 .. 4DBF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_009F : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00A0 : aliased constant Core_Second_Stage
     := (16#15#           =>  --  A015
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00A1 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00A4 : aliased constant Core_Second_Stage
     := (16#8D# .. 16#8F# =>  --  A48D .. A48F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#C6# =>  --  A490 .. A4C6
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00A6 : aliased constant Core_Second_Stage
     := (16#00# .. 16#0B# =>  --  A600 .. A60B
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0C#           =>  --  A60C
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#0D#           =>  --  A60D
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>  --  A60E
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>  --  A60F
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#10# .. 16#1F# =>  --  A610 .. A61F
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#20# .. 16#29# =>  --  A620 .. A629
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2A# .. 16#2B# =>  --  A62A .. A62B
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#40#           =>  --  A640
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#41#           =>  --  A641
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#42#           =>  --  A642
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#43#           =>  --  A643
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#44#           =>  --  A644
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#45#           =>  --  A645
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>  --  A646
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47#           =>  --  A647
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>  --  A648
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#49#           =>  --  A649
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4A#           =>  --  A64A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4B#           =>  --  A64B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4C#           =>  --  A64C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4D#           =>  --  A64D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4E#           =>  --  A64E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4F#           =>  --  A64F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#50#           =>  --  A650
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#51#           =>  --  A651
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#52#           =>  --  A652
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#53#           =>  --  A653
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#54#           =>  --  A654
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#55#           =>  --  A655
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56#           =>  --  A656
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#57#           =>  --  A657
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#58#           =>  --  A658
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#59#           =>  --  A659
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5A#           =>  --  A65A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5B#           =>  --  A65B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5C#           =>  --  A65C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5D#           =>  --  A65D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5E#           =>  --  A65E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5F#           =>  --  A65F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#62#           =>  --  A662
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#63#           =>  --  A663
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#64#           =>  --  A664
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#65#           =>  --  A665
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#66#           =>  --  A666
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#67#           =>  --  A667
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>  --  A668
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#69#           =>  --  A669
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6A#           =>  --  A66A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6B#           =>  --  A66B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6C#           =>  --  A66C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6D#           =>  --  A66D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6E#           =>  --  A66E
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6F#           =>  --  A66F
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#70# .. 16#72# =>  --  A670 .. A672
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Case_Ignorable => True,
            others => False)),
         16#73#           =>  --  A673
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7C# .. 16#7D# =>  --  A67C .. A67D
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#7E#           =>  --  A67E
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7F#           =>  --  A67F
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#80#           =>  --  A680
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#81#           =>  --  A681
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#82#           =>  --  A682
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#83#           =>  --  A683
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#84#           =>  --  A684
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#85#           =>  --  A685
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#86#           =>  --  A686
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#87#           =>  --  A687
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88#           =>  --  A688
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#89#           =>  --  A689
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8A#           =>  --  A68A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8B#           =>  --  A68B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8C#           =>  --  A68C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8D#           =>  --  A68D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8E#           =>  --  A68E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8F#           =>  --  A68F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#90#           =>  --  A690
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#91#           =>  --  A691
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#92#           =>  --  A692
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#93#           =>  --  A693
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#94#           =>  --  A694
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#95#           =>  --  A695
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#96#           =>  --  A696
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#97#           =>  --  A697
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_00A7 : aliased constant Core_Second_Stage
     := (16#00# .. 16#16# =>  --  A700 .. A716
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#17# .. 16#1F# =>  --  A717 .. A71F
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#20# .. 16#21# =>  --  A720 .. A721
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#22#           =>  --  A722
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#23#           =>  --  A723
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#24#           =>  --  A724
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#25#           =>  --  A725
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#26#           =>  --  A726
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27#           =>  --  A727
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#28#           =>  --  A728
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#29#           =>  --  A729
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2A#           =>  --  A72A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2B#           =>  --  A72B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2C#           =>  --  A72C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2D#           =>  --  A72D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2E#           =>  --  A72E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2F#           =>  --  A72F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#30# .. 16#31# =>  --  A730 .. A731
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#32#           =>  --  A732
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#33#           =>  --  A733
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#34#           =>  --  A734
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#35#           =>  --  A735
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#36#           =>  --  A736
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#37#           =>  --  A737
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#38#           =>  --  A738
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#39#           =>  --  A739
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3A#           =>  --  A73A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3B#           =>  --  A73B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3C#           =>  --  A73C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3D#           =>  --  A73D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3E#           =>  --  A73E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3F#           =>  --  A73F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#40#           =>  --  A740
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#41#           =>  --  A741
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#42#           =>  --  A742
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#43#           =>  --  A743
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#44#           =>  --  A744
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#45#           =>  --  A745
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>  --  A746
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47#           =>  --  A747
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>  --  A748
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#49#           =>  --  A749
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4A#           =>  --  A74A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4B#           =>  --  A74B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4C#           =>  --  A74C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4D#           =>  --  A74D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4E#           =>  --  A74E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4F#           =>  --  A74F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#50#           =>  --  A750
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#51#           =>  --  A751
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#52#           =>  --  A752
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#53#           =>  --  A753
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#54#           =>  --  A754
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#55#           =>  --  A755
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56#           =>  --  A756
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#57#           =>  --  A757
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#58#           =>  --  A758
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#59#           =>  --  A759
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5A#           =>  --  A75A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5B#           =>  --  A75B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5C#           =>  --  A75C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5D#           =>  --  A75D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5E#           =>  --  A75E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5F#           =>  --  A75F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#60#           =>  --  A760
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#61#           =>  --  A761
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#62#           =>  --  A762
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#63#           =>  --  A763
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#64#           =>  --  A764
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#65#           =>  --  A765
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#66#           =>  --  A766
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#67#           =>  --  A767
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>  --  A768
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#69#           =>  --  A769
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6A#           =>  --  A76A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6B#           =>  --  A76B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6C#           =>  --  A76C
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6D#           =>  --  A76D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6E#           =>  --  A76E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6F#           =>  --  A76F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#70#           =>  --  A770
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Case_Ignorable => True,
            others => False)),
         16#71# .. 16#78# =>  --  A771 .. A778
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#79#           =>  --  A779
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7A#           =>  --  A77A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>  --  A77B
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7C#           =>  --  A77C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D# .. 16#7E# =>  --  A77D .. A77E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7F#           =>  --  A77F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#80#           =>  --  A780
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#81#           =>  --  A781
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#82#           =>  --  A782
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#83#           =>  --  A783
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#84#           =>  --  A784
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#85#           =>  --  A785
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#86#           =>  --  A786
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#87#           =>  --  A787
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88#           =>  --  A788
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#89# .. 16#8A# =>  --  A789 .. A78A
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#8B#           =>  --  A78B
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8C#           =>  --  A78C
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_00A8 : aliased constant Core_Second_Stage
     := (16#02#           =>  --  A802
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#06#           =>  --  A806
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#0B#           =>  --  A80B
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#23# .. 16#24# =>  --  A823 .. A824
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#25# .. 16#26# =>  --  A825 .. A826
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#27#           =>  --  A827
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#28# .. 16#2B# =>  --  A828 .. A82B
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#2C# .. 16#3F# =>  --  A82C .. A83F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#74# .. 16#75# =>  --  A874 .. A875
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#76# .. 16#77# =>  --  A876 .. A877
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#78# .. 16#7F# =>  --  A878 .. A87F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#81# =>  --  A880 .. A881
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B4# .. 16#C3# =>  --  A8B4 .. A8C3
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C4#           =>  --  A8C4
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#C5# .. 16#CD# =>  --  A8C5 .. A8CD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CE# .. 16#CF# =>  --  A8CE .. A8CF
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#D9# =>  --  A8D0 .. A8D9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00A9 : aliased constant Core_Second_Stage
     := (16#00# .. 16#09# =>  --  A900 .. A909
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0A# .. 16#25# =>  --  A90A .. A925
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#26# .. 16#2A# =>  --  A926 .. A92A
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2B# .. 16#2D# =>  --  A92B .. A92D
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2E#           =>  --  A92E
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  A92F
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#46# =>  --  A930 .. A946
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47# .. 16#51# =>  --  A947 .. A951
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#52#           =>  --  A952
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53#           =>  --  A953
          (Spacing_Mark, 9, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5F#           =>  --  A95F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_00AA : aliased constant Core_Second_Stage
     := (16#00# .. 16#28# =>  --  AA00 .. AA28
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#29# .. 16#2E# =>  --  AA29 .. AA2E
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#2F# .. 16#30# =>  --  AA2F .. AA30
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#31# .. 16#32# =>  --  AA31 .. AA32
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#33# .. 16#34# =>  --  AA33 .. AA34
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35# .. 16#36# =>  --  AA35 .. AA36
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#40# .. 16#42# =>  --  AA40 .. AA42
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>  --  AA43
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#44# .. 16#4B# =>  --  AA44 .. AA4B
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4C#           =>  --  AA4C
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#4D#           =>  --  AA4D
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50# .. 16#59# =>  --  AA50 .. AA59
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C#           =>  --  AA5C
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5D# .. 16#5F# =>  --  AA5D .. AA5F
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_00AC : aliased constant Core_Second_Stage
     := (16#00#           =>  --  AC00
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1C#           =>  --  AC1C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#38#           =>  --  AC38
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#54#           =>  --  AC54
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70#           =>  --  AC70
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8C#           =>  --  AC8C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8#           =>  --  ACA8
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>  --  ACC4
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E0#           =>  --  ACE0
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FC#           =>  --  ACFC
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00AD : aliased constant Core_Second_Stage
     := (16#18#           =>  --  AD18
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#34#           =>  --  AD34
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#50#           =>  --  AD50
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6C#           =>  --  AD6C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88#           =>  --  AD88
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A4#           =>  --  ADA4
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0#           =>  --  ADC0
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DC#           =>  --  ADDC
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F8#           =>  --  ADF8
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00AE : aliased constant Core_Second_Stage
     := (16#14#           =>  --  AE14
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30#           =>  --  AE30
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4C#           =>  --  AE4C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#68#           =>  --  AE68
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>  --  AE84
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0#           =>  --  AEA0
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BC#           =>  --  AEBC
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D8#           =>  --  AED8
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F4#           =>  --  AEF4
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00AF : aliased constant Core_Second_Stage
     := (16#10#           =>  --  AF10
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2C#           =>  --  AF2C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#48#           =>  --  AF48
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#64#           =>  --  AF64
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#80#           =>  --  AF80
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9C#           =>  --  AF9C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B8#           =>  --  AFB8
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D4#           =>  --  AFD4
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F0#           =>  --  AFF0
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00B0 : aliased constant Core_Second_Stage
     := (16#0C#           =>  --  B00C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#28#           =>  --  B028
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#44#           =>  --  B044
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#60#           =>  --  B060
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7C#           =>  --  B07C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#98#           =>  --  B098
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4#           =>  --  B0B4
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D0#           =>  --  B0D0
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EC#           =>  --  B0EC
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00B1 : aliased constant Core_Second_Stage
     := (16#08#           =>  --  B108
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#24#           =>  --  B124
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#40#           =>  --  B140
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5C#           =>  --  B15C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78#           =>  --  B178
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94#           =>  --  B194
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B0#           =>  --  B1B0
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CC#           =>  --  B1CC
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E8#           =>  --  B1E8
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00B2 : aliased constant Core_Second_Stage
     := (16#04#           =>  --  B204
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#20#           =>  --  B220
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>  --  B23C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#58#           =>  --  B258
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#74#           =>  --  B274
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#90#           =>  --  B290
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AC#           =>  --  B2AC
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C8#           =>  --  B2C8
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E4#           =>  --  B2E4
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00D7 : aliased constant Core_Second_Stage
     := (16#18#           =>  --  D718
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#34#           =>  --  D734
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#50#           =>  --  D750
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6C#           =>  --  D76C
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88#           =>  --  D788
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00D8 : aliased constant Core_Second_Stage
     := (others           =>
          (Surrogate, 0, Other, Other, Other, Surrogate,
           (others => False)));

   Group_00E0 : aliased constant Core_Second_Stage
     := (others           =>
          (Private_Use, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_00F9 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00FA : aliased constant Core_Second_Stage
     := (16#0E# .. 16#0F# =>  --  FA0E .. FA0F
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#11#           =>  --  FA11
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#13# .. 16#14# =>  --  FA13 .. FA14
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1F#           =>  --  FA1F
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#21#           =>  --  FA21
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#23# .. 16#24# =>  --  FA23 .. FA24
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#27# .. 16#29# =>  --  FA27 .. FA29
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2E# .. 16#2F# =>  --  FA2E .. FA2F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#6B# .. 16#6F# =>  --  FA6B .. FA6F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00FB : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>  --  FB00 .. FB06
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#07# .. 16#12# =>  --  FB07 .. FB12
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#13# .. 16#17# =>  --  FB13 .. FB17
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#18# .. 16#1C# =>  --  FB18 .. FB1C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1E#           =>  --  FB1E
          (Nonspacing_Mark, 26, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#29#           =>  --  FB29
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#37#           =>  --  FB37
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3D#           =>  --  FB3D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3F#           =>  --  FB3F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#42#           =>  --  FB42
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#45#           =>  --  FB45
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B2# .. 16#D2# =>  --  FBB2 .. FBD2
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00FC : aliased constant Core_Second_Stage
     := (16#5E# .. 16#63# =>  --  FC5E .. FC63
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00FD : aliased constant Core_Second_Stage
     := (16#3E#           =>  --  FD3E
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3F#           =>  --  FD3F
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#40# .. 16#4F# =>  --  FD40 .. FD4F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#91# =>  --  FD90 .. FD91
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C8# .. 16#CF# =>  --  FDC8 .. FDCF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#EF# =>  --  FDD0 .. FDEF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Noncharacter_Code_Point => True,
            others => False)),
         16#FA# .. 16#FB# =>  --  FDFA .. FDFB
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#FC#           =>  --  FDFC
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>  --  FDFD
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00FE : aliased constant Core_Second_Stage
     := (16#00# .. 16#0F# =>  --  FE00 .. FE0F
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#10#           =>  --  FE10
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#11#           =>  --  FE11
          (Other_Punctuation, 0, Other, Other, S_Continue, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#12#           =>  --  FE12
          (Other_Punctuation, 0, Other, Other, Other, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#13#           =>  --  FE13
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#14#           =>  --  FE14
          (Other_Punctuation, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#15# .. 16#16# =>  --  FE15 .. FE16
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  FE17
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  FE18
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  FE19
          (Other_Punctuation, 0, Other, Other, Other, Inseparable,
           (Grapheme_Base => True,
            others => False)),
         16#1A# .. 16#1F# =>  --  FE1A .. FE1F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#26# =>  --  FE20 .. FE26
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#27# .. 16#2F# =>  --  FE27 .. FE2F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#30#           =>  --  FE30
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#31# .. 16#32# =>  --  FE31 .. FE32
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#33# .. 16#34# =>  --  FE33 .. FE34
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35#           =>  --  FE35
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#36#           =>  --  FE36
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#37#           =>  --  FE37
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#38#           =>  --  FE38
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#39#           =>  --  FE39
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3A#           =>  --  FE3A
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  FE3B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3C#           =>  --  FE3C
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3D#           =>  --  FE3D
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3E#           =>  --  FE3E
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3F#           =>  --  FE3F
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  FE40
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#41#           =>  --  FE41
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#42#           =>  --  FE42
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#43#           =>  --  FE43
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#44#           =>  --  FE44
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#45# .. 16#46# =>  --  FE45 .. FE46
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47#           =>  --  FE47
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#48#           =>  --  FE48
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#49# .. 16#4C# =>  --  FE49 .. FE4C
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#4D# .. 16#4F# =>  --  FE4D .. FE4F
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50#           =>  --  FE50
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#51#           =>  --  FE51
          (Other_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#52#           =>  --  FE52
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#53#           =>  --  FE53
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#54#           =>  --  FE54
          (Other_Punctuation, 0, Other, Mid_Num, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#55#           =>  --  FE55
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#56# .. 16#57# =>  --  FE56 .. FE57
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#58#           =>  --  FE58
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#59#           =>  --  FE59
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5A#           =>  --  FE5A
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5B#           =>  --  FE5B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  FE5C
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5D#           =>  --  FE5D
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  FE5E
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5F# .. 16#60# =>  --  FE5F .. FE60
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#61#           =>  --  FE61
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#62#           =>  --  FE62
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#63#           =>  --  FE63
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Hyphen
              | Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#64# .. 16#66# =>  --  FE64 .. FE66
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#67#           =>  --  FE67
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#68#           =>  --  FE68
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#69#           =>  --  FE69
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6A#           =>  --  FE6A
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>  --  FE6B
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#6C# .. 16#6F# =>  --  FE6C .. FE6F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#70#           =>  --  FE70
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#72#           =>  --  FE72
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#74#           =>  --  FE74
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#75#           =>  --  FE75
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#76#           =>  --  FE76
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#78#           =>  --  FE78
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#7A#           =>  --  FE7A
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#7C#           =>  --  FE7C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#7E#           =>  --  FE7E
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#FD# .. 16#FE# =>  --  FEFD .. FEFE
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_00FF : aliased constant Core_Second_Stage
     := (16#00#           =>  --  FF00
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01#           =>  --  FF01
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  FF02
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  FF03
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  FF04
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  FF05
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#06#           =>  --  FF06
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#07#           =>  --  FF07
          (Other_Punctuation, 0, Other, Mid_Num_Let, Other, Ideographic,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#08#           =>  --  FF08
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  FF09
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  FF0A
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  FF0B
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#0C#           =>  --  FF0C
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  FF0D
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>  --  FF0E
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>  --  FF0F
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#10# .. 16#19# =>  --  FF10 .. FF19
          (Decimal_Number, 0, Other, Other, Other, Ideographic,
           (Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A#           =>  --  FF1A
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#1B#           =>  --  FF1B
          (Other_Punctuation, 0, Other, Mid_Num, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#1C# .. 16#1E# =>  --  FF1C .. FF1E
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#1F#           =>  --  FF1F
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  FF20
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#21# .. 16#26# =>  --  FF21 .. FF26
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Ideographic,
           (Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27# .. 16#3A# =>  --  FF27 .. FF3A
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3B#           =>  --  FF3B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3C#           =>  --  FF3C
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3D#           =>  --  FF3D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3E#           =>  --  FF3E
          (Modifier_Symbol, 0, Other, Other, Other, Ideographic,
           (Diacritic
              | Other_Math
              | Grapheme_Base
              | Math
              | Case_Ignorable => True,
            others => False)),
         16#3F#           =>  --  FF3F
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40#           =>  --  FF40
          (Modifier_Symbol, 0, Other, Other, Other, Ideographic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#41# .. 16#46# =>  --  FF41 .. FF46
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ideographic,
           (Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#47# .. 16#5A# =>  --  FF47 .. FF5A
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>  --  FF5B
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  FF5C
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#5D#           =>  --  FF5D
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  FF5E
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#5F#           =>  --  FF5F
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#60#           =>  --  FF60
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#61#           =>  --  FF61
          (Other_Punctuation, 0, Other, Other, S_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#62#           =>  --  FF62
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#63#           =>  --  FF63
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#64#           =>  --  FF64
          (Other_Punctuation, 0, Other, Other, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#65#           =>  --  FF65
          (Other_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#66#           =>  --  FF66
          (Other_Letter, 0, Other, Katakana, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#67# .. 16#6F# =>  --  FF67 .. FF6F
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70#           =>  --  FF70
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Case_Ignorable => True,
            others => False)),
         16#71# .. 16#9D# =>  --  FF71 .. FF9D
          (Other_Letter, 0, Other, Katakana, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9E# .. 16#9F# =>  --  FF9E .. FF9F
          (Modifier_Letter, 0, Extend, Extend, Extend, Nonstarter,
           (Diacritic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | ID_Start
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#A0#           =>  --  FFA0
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BF# .. 16#C1# =>  --  FFBF .. FFC1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C8# .. 16#C9# =>  --  FFC8 .. FFC9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#D1# =>  --  FFD0 .. FFD1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#D9# =>  --  FFD8 .. FFD9
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DD# .. 16#DF# =>  --  FFDD .. FFDF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E0#           =>  --  FFE0
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#E1#           =>  --  FFE1
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#E2#           =>  --  FFE2
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#E3#           =>  --  FFE3
          (Modifier_Symbol, 0, Other, Other, Other, Ideographic,
           (Diacritic
              | Grapheme_Base
              | Case_Ignorable => True,
            others => False)),
         16#E4#           =>  --  FFE4
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  FFE5 .. FFE6
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#E7#           =>  --  FFE7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E8#           =>  --  FFE8
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#E9# .. 16#EC# =>  --  FFE9 .. FFEC
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#ED# .. 16#EE# =>  --  FFED .. FFEE
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#EF#           =>  --  FFEF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F8# =>  --  FFF0 .. FFF8
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#F9# .. 16#FB# =>  --  FFF9 .. FFFB
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Case_Ignorable => True,
            others => False)),
         16#FC#           =>  --  FFFC
          (Other_Symbol, 0, Other, Other, Other, Contingent_Break,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>  --  FFFD
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0100 : aliased constant Core_Second_Stage
     := (16#0C#           =>  --  01000C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#27#           =>  --  010027
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3B#           =>  --  01003B
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E#           =>  --  01003E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4E# .. 16#4F# =>  --  01004E .. 01004F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5E# .. 16#7F# =>  --  01005E .. 01007F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0101 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  010100 .. 010101
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  010102
          (Other_Symbol, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#03# .. 16#06# =>  --  010103 .. 010106
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#07# .. 16#33# =>  --  010107 .. 010133
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#34# .. 16#36# =>  --  010134 .. 010136
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#40# .. 16#74# =>  --  010140 .. 010174
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#75# .. 16#78# =>  --  010175 .. 010178
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8A#           =>  --  01018A
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8B# .. 16#8F# =>  --  01018B .. 01018F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9C# .. 16#CF# =>  --  01019C .. 0101CF
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#FD#           =>  --  0101FD
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)));

   Group_0102 : aliased constant Core_Second_Stage
     := (16#80# .. 16#9C# =>  --  010280 .. 01029C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0# .. 16#D0# =>  --  0102A0 .. 0102D0
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0103 : aliased constant Core_Second_Stage
     := (16#1F#           =>  --  01031F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#23# =>  --  010320 .. 010323
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#24# .. 16#2F# =>  --  010324 .. 01032F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#41#           =>  --  010341
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4A#           =>  --  01034A
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4B# .. 16#7F# =>  --  01034B .. 01037F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9E#           =>  --  01039E
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9F#           =>  --  01039F
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#C4# .. 16#C7# =>  --  0103C4 .. 0103C7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0#           =>  --  0103D0
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D1# .. 16#D5# =>  --  0103D1 .. 0103D5
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_0104 : aliased constant Core_Second_Stage
     := (16#00# .. 16#27# =>  --  010400 .. 010427
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#28# .. 16#4F# =>  --  010428 .. 01044F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Cased
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#50# .. 16#9D# =>  --  010450 .. 01049D
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0# .. 16#A9# =>  --  0104A0 .. 0104A9
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0108 : aliased constant Core_Second_Stage
     := (16#00# .. 16#05# =>  --  010800 .. 010805
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>  --  010808
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0A# .. 16#35# =>  --  01080A .. 010835
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#37# .. 16#38# =>  --  010837 .. 010838
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>  --  01083C
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3F#           =>  --  01083F
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0109 : aliased constant Core_Second_Stage
     := (16#00# .. 16#15# =>  --  010900 .. 010915
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#16# .. 16#19# =>  --  010916 .. 010919
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#1F#           =>  --  01091F
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#39# =>  --  010920 .. 010939
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3F#           =>  --  01093F
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_010A : aliased constant Core_Second_Stage
     := (16#00#           =>  --  010A00
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#01# .. 16#03# =>  --  010A01 .. 010A03
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#05# .. 16#06# =>  --  010A05 .. 010A06
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#0C#           =>  --  010A0C
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#0D#           =>  --  010A0D
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#0E#           =>  --  010A0E
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#0F#           =>  --  010A0F
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#10# .. 16#13# =>  --  010A10 .. 010A13
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#15# .. 16#17# =>  --  010A15 .. 010A17
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#19# .. 16#33# =>  --  010A19 .. 010A33
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#38#           =>  --  010A38
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#39#           =>  --  010A39
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3A#           =>  --  010A3A
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#3F#           =>  --  010A3F
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#40# .. 16#47# =>  --  010A40 .. 010A47
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#57# =>  --  010A50 .. 010A57
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#58#           =>  --  010A58
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0123 : aliased constant Core_Second_Stage
     := (16#00# .. 16#6E# =>  --  012300 .. 01236E
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0124 : aliased constant Core_Second_Stage
     := (16#00# .. 16#62# =>  --  012400 .. 012462
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70# .. 16#73# =>  --  012470 .. 012473
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_01D0 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)));

   Group_01D1 : aliased constant Core_Second_Stage
     := (16#27# .. 16#28# =>  --  01D127 .. 01D128
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#65#           =>  --  01D165
          (Spacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Other_Grapheme_Extend
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#66#           =>  --  01D166
          (Spacing_Mark, 216, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#67# .. 16#69# =>  --  01D167 .. 01D169
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#6D#           =>  --  01D16D
          (Spacing_Mark, 226, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6E# .. 16#72# =>  --  01D16E .. 01D172
          (Spacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Grapheme_Extend
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#73# .. 16#7A# =>  --  01D173 .. 01D17A
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#7B# .. 16#82# =>  --  01D17B .. 01D182
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#85# .. 16#89# =>  --  01D185 .. 01D189
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#8A# .. 16#8B# =>  --  01D18A .. 01D18B
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#AA# .. 16#AD# =>  --  01D1AA .. 01D1AD
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)));

   Group_01D2 : aliased constant Core_Second_Stage
     := (16#00# .. 16#41# =>  --  01D200 .. 01D241
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#42# .. 16#44# =>  --  01D242 .. 01D244
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)),
         16#45#           =>  --  01D245
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_01D3 : aliased constant Core_Second_Stage
     := (16#00# .. 16#56# =>  --  01D300 .. 01D356
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60# .. 16#71# =>  --  01D360 .. 01D371
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_01D4 : aliased constant Core_Second_Stage
     := (16#1A# .. 16#21# =>  --  01D41A .. 01D421
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#22# .. 16#23# =>  --  01D422 .. 01D423
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#24# .. 16#33# =>  --  01D424 .. 01D433
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#4E# .. 16#54# =>  --  01D44E .. 01D454
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#55#           =>  --  01D455
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#56# .. 16#57# =>  --  01D456 .. 01D457
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#58# .. 16#67# =>  --  01D458 .. 01D467
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#82# .. 16#89# =>  --  01D482 .. 01D489
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#8A# .. 16#8B# =>  --  01D48A .. 01D48B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#8C# .. 16#9B# =>  --  01D48C .. 01D49B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#9D#           =>  --  01D49D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A0# .. 16#A1# =>  --  01D4A0 .. 01D4A1
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A3# .. 16#A4# =>  --  01D4A3 .. 01D4A4
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A7# .. 16#A8# =>  --  01D4A7 .. 01D4A8
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#AD#           =>  --  01D4AD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B6# .. 16#B9# =>  --  01D4B6 .. 01D4B9
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BA#           =>  --  01D4BA
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BB#           =>  --  01D4BB
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BC#           =>  --  01D4BC
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BD#           =>  --  01D4BD
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BE# .. 16#BF# =>  --  01D4BE .. 01D4BF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#C0# .. 16#C3# =>  --  01D4C0 .. 01D4C3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#C4#           =>  --  01D4C4
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C5# .. 16#CF# =>  --  01D4C5 .. 01D4CF
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#EA# .. 16#F1# =>  --  01D4EA .. 01D4F1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#F2# .. 16#F3# =>  --  01D4F2 .. 01D4F3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)));

   Group_01D5 : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>  --  01D500 .. 01D503
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#06#           =>  --  01D506
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0B# .. 16#0C# =>  --  01D50B .. 01D50C
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#15#           =>  --  01D515
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1D#           =>  --  01D51D
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1E# .. 16#25# =>  --  01D51E .. 01D525
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#26# .. 16#27# =>  --  01D526 .. 01D527
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#28# .. 16#37# =>  --  01D528 .. 01D537
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#3A#           =>  --  01D53A
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3F#           =>  --  01D53F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#45#           =>  --  01D545
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#47# .. 16#49# =>  --  01D547 .. 01D549
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51#           =>  --  01D551
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#52# .. 16#59# =>  --  01D552 .. 01D559
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#5A# .. 16#5B# =>  --  01D55A .. 01D55B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#5C# .. 16#6B# =>  --  01D55C .. 01D56B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#86# .. 16#8D# =>  --  01D586 .. 01D58D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#8E# .. 16#8F# =>  --  01D58E .. 01D58F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#90# .. 16#9F# =>  --  01D590 .. 01D59F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#BA# .. 16#C1# =>  --  01D5BA .. 01D5C1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#C2# .. 16#C3# =>  --  01D5C2 .. 01D5C3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#C4# .. 16#D3# =>  --  01D5C4 .. 01D5D3
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#EE# .. 16#F5# =>  --  01D5EE .. 01D5F5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#F6# .. 16#F7# =>  --  01D5F6 .. 01D5F7
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)));

   Group_01D6 : aliased constant Core_Second_Stage
     := (16#00# .. 16#07# =>  --  01D600 .. 01D607
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#22# .. 16#29# =>  --  01D622 .. 01D629
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#2A# .. 16#2B# =>  --  01D62A .. 01D62B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#2C# .. 16#3B# =>  --  01D62C .. 01D63B
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#56# .. 16#5D# =>  --  01D656 .. 01D65D
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#5E# .. 16#5F# =>  --  01D65E .. 01D65F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#60# .. 16#6F# =>  --  01D660 .. 01D66F
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#8A# .. 16#91# =>  --  01D68A .. 01D691
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#92# .. 16#93# =>  --  01D692 .. 01D693
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#94# .. 16#A5# =>  --  01D694 .. 01D6A5
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#A6# .. 16#A7# =>  --  01D6A6 .. 01D6A7
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C1#           =>  --  01D6C1
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#C2# .. 16#DA# =>  --  01D6C2 .. 01D6DA
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#DB#           =>  --  01D6DB
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#DC# .. 16#E1# =>  --  01D6DC .. 01D6E1
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#FB#           =>  --  01D6FB
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)));

   Group_01D7 : aliased constant Core_Second_Stage
     := (16#15#           =>  --  01D715
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#1C# .. 16#34# =>  --  01D71C .. 01D734
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#35#           =>  --  01D735
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#4F#           =>  --  01D74F
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#56# .. 16#6E# =>  --  01D756 .. 01D76E
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#6F#           =>  --  01D76F
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#89#           =>  --  01D789
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#90# .. 16#A8# =>  --  01D790 .. 01D7A8
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#A9#           =>  --  01D7A9
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#C3#           =>  --  01D7C3
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#CA#           =>  --  01D7CA
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)),
         16#CC# .. 16#CD# =>  --  01D7CC .. 01D7CD
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Cased => True,
            others => False)));

   Group_01F0 : aliased constant Core_Second_Stage
     := (16#2C# .. 16#2F# =>  --  01F02C .. 01F02F
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)));

   Group_01FF : aliased constant Core_Second_Stage
     := (others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_02A6 : aliased constant Core_Second_Stage
     := (others           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

   Group_02FA : aliased constant Core_Second_Stage
     := (16#00# .. 16#1D# =>  --  02FA00 .. 02FA1D
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)));

   Group_0E00 : aliased constant Core_Second_Stage
     := (16#01#           =>  --  0E0001
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Deprecated
              | Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         16#20# .. 16#7F# =>  --  0E0020 .. 0E007F
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Deprecated
              | Default_Ignorable_Code_Point
              | Case_Ignorable => True,
            others => False)),
         others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point => True,
            others => False)));

   Group_0E01 : aliased constant Core_Second_Stage
     := (others           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Case_Ignorable => True,
            others => False)));

   Group_0E02 : aliased constant Core_Second_Stage
     := (others           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point => True,
            others => False)));

   Group_0FFF : aliased constant Core_Second_Stage
     := (others           =>
          (Private_Use, 0, Other, Other, Other, Unknown,
           (others => False)));

   Property : aliased constant Core_First_Stage
     := (16#0000# => Group_0000'Access, 16#0001# => Group_0001'Access,
         16#0002# => Group_0002'Access, 16#0003# => Group_0003'Access,
         16#0004# => Group_0004'Access, 16#0005# => Group_0005'Access,
         16#0006# => Group_0006'Access, 16#0007# => Group_0007'Access,
         16#0009# => Group_0009'Access, 16#000A# => Group_000A'Access,
         16#000B# => Group_000B'Access, 16#000C# => Group_000C'Access,
         16#000D# => Group_000D'Access, 16#000E# => Group_000E'Access,
         16#000F# => Group_000F'Access, 16#0010# => Group_0010'Access,
         16#0011# => Group_0011'Access, 16#0012# => Group_0012'Access,
         16#0013# => Group_0013'Access, 16#0014# => Group_0014'Access,
         16#0015# => Group_0015'Access, 16#0016# => Group_0016'Access,
         16#0017# => Group_0017'Access, 16#0018# => Group_0018'Access,
         16#0019# => Group_0019'Access, 16#001A# => Group_001A'Access,
         16#001B# => Group_001B'Access, 16#001C# => Group_001C'Access,
         16#001D# => Group_001D'Access, 16#001E# => Group_001E'Access,
         16#001F# => Group_001F'Access, 16#0020# => Group_0020'Access,
         16#0021# => Group_0021'Access, 16#0022# => Group_0022'Access,
         16#0023# => Group_0023'Access, 16#0024# => Group_0024'Access,
         16#0025# => Group_0025'Access, 16#0026# => Group_0026'Access,
         16#0027# => Group_0027'Access, 16#0028# => Group_0028'Access,
         16#0029# => Group_0029'Access, 16#002A# => Group_002A'Access,
         16#002B# => Group_002B'Access, 16#002C# => Group_002C'Access,
         16#002D# => Group_002D'Access, 16#002E# => Group_002E'Access,
         16#002F# => Group_002F'Access, 16#0030# => Group_0030'Access,
         16#0031# => Group_0031'Access, 16#0032# => Group_0032'Access,
         16#0033# => Group_0033'Access, 16#0034# => Group_0034'Access,
         16#0035# => Group_0034'Access, 16#0036# => Group_0034'Access,
         16#0037# => Group_0034'Access, 16#0038# => Group_0034'Access,
         16#0039# => Group_0034'Access, 16#003A# => Group_0034'Access,
         16#003B# => Group_0034'Access, 16#003C# => Group_0034'Access,
         16#003D# => Group_0034'Access, 16#003E# => Group_0034'Access,
         16#003F# => Group_0034'Access, 16#0040# => Group_0034'Access,
         16#0041# => Group_0034'Access, 16#0042# => Group_0034'Access,
         16#0043# => Group_0034'Access, 16#0044# => Group_0034'Access,
         16#0045# => Group_0034'Access, 16#0046# => Group_0034'Access,
         16#0047# => Group_0034'Access, 16#0048# => Group_0034'Access,
         16#0049# => Group_0034'Access, 16#004A# => Group_0034'Access,
         16#004B# => Group_0034'Access, 16#004C# => Group_0034'Access,
         16#004D# => Group_004D'Access, 16#004E# => Group_0034'Access,
         16#004F# => Group_0034'Access, 16#0050# => Group_0034'Access,
         16#0051# => Group_0034'Access, 16#0052# => Group_0034'Access,
         16#0053# => Group_0034'Access, 16#0054# => Group_0034'Access,
         16#0055# => Group_0034'Access, 16#0056# => Group_0034'Access,
         16#0057# => Group_0034'Access, 16#0058# => Group_0034'Access,
         16#0059# => Group_0034'Access, 16#005A# => Group_0034'Access,
         16#005B# => Group_0034'Access, 16#005C# => Group_0034'Access,
         16#005D# => Group_0034'Access, 16#005E# => Group_0034'Access,
         16#005F# => Group_0034'Access, 16#0060# => Group_0034'Access,
         16#0061# => Group_0034'Access, 16#0062# => Group_0034'Access,
         16#0063# => Group_0034'Access, 16#0064# => Group_0034'Access,
         16#0065# => Group_0034'Access, 16#0066# => Group_0034'Access,
         16#0067# => Group_0034'Access, 16#0068# => Group_0034'Access,
         16#0069# => Group_0034'Access, 16#006A# => Group_0034'Access,
         16#006B# => Group_0034'Access, 16#006C# => Group_0034'Access,
         16#006D# => Group_0034'Access, 16#006E# => Group_0034'Access,
         16#006F# => Group_0034'Access, 16#0070# => Group_0034'Access,
         16#0071# => Group_0034'Access, 16#0072# => Group_0034'Access,
         16#0073# => Group_0034'Access, 16#0074# => Group_0034'Access,
         16#0075# => Group_0034'Access, 16#0076# => Group_0034'Access,
         16#0077# => Group_0034'Access, 16#0078# => Group_0034'Access,
         16#0079# => Group_0034'Access, 16#007A# => Group_0034'Access,
         16#007B# => Group_0034'Access, 16#007C# => Group_0034'Access,
         16#007D# => Group_0034'Access, 16#007E# => Group_0034'Access,
         16#007F# => Group_0034'Access, 16#0080# => Group_0034'Access,
         16#0081# => Group_0034'Access, 16#0082# => Group_0034'Access,
         16#0083# => Group_0034'Access, 16#0084# => Group_0034'Access,
         16#0085# => Group_0034'Access, 16#0086# => Group_0034'Access,
         16#0087# => Group_0034'Access, 16#0088# => Group_0034'Access,
         16#0089# => Group_0034'Access, 16#008A# => Group_0034'Access,
         16#008B# => Group_0034'Access, 16#008C# => Group_0034'Access,
         16#008D# => Group_0034'Access, 16#008E# => Group_0034'Access,
         16#008F# => Group_0034'Access, 16#0090# => Group_0034'Access,
         16#0091# => Group_0034'Access, 16#0092# => Group_0034'Access,
         16#0093# => Group_0034'Access, 16#0094# => Group_0034'Access,
         16#0095# => Group_0034'Access, 16#0096# => Group_0034'Access,
         16#0097# => Group_0034'Access, 16#0098# => Group_0034'Access,
         16#0099# => Group_0034'Access, 16#009A# => Group_0034'Access,
         16#009B# => Group_0034'Access, 16#009C# => Group_0034'Access,
         16#009D# => Group_0034'Access, 16#009E# => Group_0034'Access,
         16#009F# => Group_009F'Access, 16#00A0# => Group_00A0'Access,
         16#00A1# => Group_00A1'Access, 16#00A2# => Group_00A1'Access,
         16#00A3# => Group_00A1'Access, 16#00A4# => Group_00A4'Access,
         16#00A5# => Group_0015'Access, 16#00A6# => Group_00A6'Access,
         16#00A7# => Group_00A7'Access, 16#00A8# => Group_00A8'Access,
         16#00A9# => Group_00A9'Access, 16#00AA# => Group_00AA'Access,
         16#00AC# => Group_00AC'Access, 16#00AD# => Group_00AD'Access,
         16#00AE# => Group_00AE'Access, 16#00AF# => Group_00AF'Access,
         16#00B0# => Group_00B0'Access, 16#00B1# => Group_00B1'Access,
         16#00B2# => Group_00B2'Access, 16#00B3# => Group_00AC'Access,
         16#00B4# => Group_00AD'Access, 16#00B5# => Group_00AE'Access,
         16#00B6# => Group_00AF'Access, 16#00B7# => Group_00B0'Access,
         16#00B8# => Group_00B1'Access, 16#00B9# => Group_00B2'Access,
         16#00BA# => Group_00AC'Access, 16#00BB# => Group_00AD'Access,
         16#00BC# => Group_00AE'Access, 16#00BD# => Group_00AF'Access,
         16#00BE# => Group_00B0'Access, 16#00BF# => Group_00B1'Access,
         16#00C0# => Group_00B2'Access, 16#00C1# => Group_00AC'Access,
         16#00C2# => Group_00AD'Access, 16#00C3# => Group_00AE'Access,
         16#00C4# => Group_00AF'Access, 16#00C5# => Group_00B0'Access,
         16#00C6# => Group_00B1'Access, 16#00C7# => Group_00B2'Access,
         16#00C8# => Group_00AC'Access, 16#00C9# => Group_00AD'Access,
         16#00CA# => Group_00AE'Access, 16#00CB# => Group_00AF'Access,
         16#00CC# => Group_00B0'Access, 16#00CD# => Group_00B1'Access,
         16#00CE# => Group_00B2'Access, 16#00CF# => Group_00AC'Access,
         16#00D0# => Group_00AD'Access, 16#00D1# => Group_00AE'Access,
         16#00D2# => Group_00AF'Access, 16#00D3# => Group_00B0'Access,
         16#00D4# => Group_00B1'Access, 16#00D5# => Group_00B2'Access,
         16#00D6# => Group_00AC'Access, 16#00D7# => Group_00D7'Access,
         16#00D8# => Group_00D8'Access, 16#00D9# => Group_00D8'Access,
         16#00DA# => Group_00D8'Access, 16#00DB# => Group_00D8'Access,
         16#00DC# => Group_00D8'Access, 16#00DD# => Group_00D8'Access,
         16#00DE# => Group_00D8'Access, 16#00DF# => Group_00D8'Access,
         16#00E0# => Group_00E0'Access, 16#00E1# => Group_00E0'Access,
         16#00E2# => Group_00E0'Access, 16#00E3# => Group_00E0'Access,
         16#00E4# => Group_00E0'Access, 16#00E5# => Group_00E0'Access,
         16#00E6# => Group_00E0'Access, 16#00E7# => Group_00E0'Access,
         16#00E8# => Group_00E0'Access, 16#00E9# => Group_00E0'Access,
         16#00EA# => Group_00E0'Access, 16#00EB# => Group_00E0'Access,
         16#00EC# => Group_00E0'Access, 16#00ED# => Group_00E0'Access,
         16#00EE# => Group_00E0'Access, 16#00EF# => Group_00E0'Access,
         16#00F0# => Group_00E0'Access, 16#00F1# => Group_00E0'Access,
         16#00F2# => Group_00E0'Access, 16#00F3# => Group_00E0'Access,
         16#00F4# => Group_00E0'Access, 16#00F5# => Group_00E0'Access,
         16#00F6# => Group_00E0'Access, 16#00F7# => Group_00E0'Access,
         16#00F8# => Group_00E0'Access, 16#00F9# => Group_00F9'Access,
         16#00FA# => Group_00FA'Access, 16#00FB# => Group_00FB'Access,
         16#00FC# => Group_00FC'Access, 16#00FD# => Group_00FD'Access,
         16#00FE# => Group_00FE'Access, 16#00FF# => Group_00FF'Access,
         16#0100# => Group_0100'Access, 16#0101# => Group_0101'Access,
         16#0102# => Group_0102'Access, 16#0103# => Group_0103'Access,
         16#0104# => Group_0104'Access, 16#0108# => Group_0108'Access,
         16#0109# => Group_0109'Access, 16#010A# => Group_010A'Access,
         16#0120# => Group_0015'Access, 16#0121# => Group_0015'Access,
         16#0122# => Group_0015'Access, 16#0123# => Group_0123'Access,
         16#0124# => Group_0124'Access, 16#01D0# => Group_01D0'Access,
         16#01D1# => Group_01D1'Access, 16#01D2# => Group_01D2'Access,
         16#01D3# => Group_01D3'Access, 16#01D4# => Group_01D4'Access,
         16#01D5# => Group_01D5'Access, 16#01D6# => Group_01D6'Access,
         16#01D7# => Group_01D7'Access, 16#01F0# => Group_01F0'Access,
         16#01FF# => Group_01FF'Access, 16#0200# => Group_0034'Access,
         16#0201# => Group_0034'Access, 16#0202# => Group_0034'Access,
         16#0203# => Group_0034'Access, 16#0204# => Group_0034'Access,
         16#0205# => Group_0034'Access, 16#0206# => Group_0034'Access,
         16#0207# => Group_0034'Access, 16#0208# => Group_0034'Access,
         16#0209# => Group_0034'Access, 16#020A# => Group_0034'Access,
         16#020B# => Group_0034'Access, 16#020C# => Group_0034'Access,
         16#020D# => Group_0034'Access, 16#020E# => Group_0034'Access,
         16#020F# => Group_0034'Access, 16#0210# => Group_0034'Access,
         16#0211# => Group_0034'Access, 16#0212# => Group_0034'Access,
         16#0213# => Group_0034'Access, 16#0214# => Group_0034'Access,
         16#0215# => Group_0034'Access, 16#0216# => Group_0034'Access,
         16#0217# => Group_0034'Access, 16#0218# => Group_0034'Access,
         16#0219# => Group_0034'Access, 16#021A# => Group_0034'Access,
         16#021B# => Group_0034'Access, 16#021C# => Group_0034'Access,
         16#021D# => Group_0034'Access, 16#021E# => Group_0034'Access,
         16#021F# => Group_0034'Access, 16#0220# => Group_0034'Access,
         16#0221# => Group_0034'Access, 16#0222# => Group_0034'Access,
         16#0223# => Group_0034'Access, 16#0224# => Group_0034'Access,
         16#0225# => Group_0034'Access, 16#0226# => Group_0034'Access,
         16#0227# => Group_0034'Access, 16#0228# => Group_0034'Access,
         16#0229# => Group_0034'Access, 16#022A# => Group_0034'Access,
         16#022B# => Group_0034'Access, 16#022C# => Group_0034'Access,
         16#022D# => Group_0034'Access, 16#022E# => Group_0034'Access,
         16#022F# => Group_0034'Access, 16#0230# => Group_0034'Access,
         16#0231# => Group_0034'Access, 16#0232# => Group_0034'Access,
         16#0233# => Group_0034'Access, 16#0234# => Group_0034'Access,
         16#0235# => Group_0034'Access, 16#0236# => Group_0034'Access,
         16#0237# => Group_0034'Access, 16#0238# => Group_0034'Access,
         16#0239# => Group_0034'Access, 16#023A# => Group_0034'Access,
         16#023B# => Group_0034'Access, 16#023C# => Group_0034'Access,
         16#023D# => Group_0034'Access, 16#023E# => Group_0034'Access,
         16#023F# => Group_0034'Access, 16#0240# => Group_0034'Access,
         16#0241# => Group_0034'Access, 16#0242# => Group_0034'Access,
         16#0243# => Group_0034'Access, 16#0244# => Group_0034'Access,
         16#0245# => Group_0034'Access, 16#0246# => Group_0034'Access,
         16#0247# => Group_0034'Access, 16#0248# => Group_0034'Access,
         16#0249# => Group_0034'Access, 16#024A# => Group_0034'Access,
         16#024B# => Group_0034'Access, 16#024C# => Group_0034'Access,
         16#024D# => Group_0034'Access, 16#024E# => Group_0034'Access,
         16#024F# => Group_0034'Access, 16#0250# => Group_0034'Access,
         16#0251# => Group_0034'Access, 16#0252# => Group_0034'Access,
         16#0253# => Group_0034'Access, 16#0254# => Group_0034'Access,
         16#0255# => Group_0034'Access, 16#0256# => Group_0034'Access,
         16#0257# => Group_0034'Access, 16#0258# => Group_0034'Access,
         16#0259# => Group_0034'Access, 16#025A# => Group_0034'Access,
         16#025B# => Group_0034'Access, 16#025C# => Group_0034'Access,
         16#025D# => Group_0034'Access, 16#025E# => Group_0034'Access,
         16#025F# => Group_0034'Access, 16#0260# => Group_0034'Access,
         16#0261# => Group_0034'Access, 16#0262# => Group_0034'Access,
         16#0263# => Group_0034'Access, 16#0264# => Group_0034'Access,
         16#0265# => Group_0034'Access, 16#0266# => Group_0034'Access,
         16#0267# => Group_0034'Access, 16#0268# => Group_0034'Access,
         16#0269# => Group_0034'Access, 16#026A# => Group_0034'Access,
         16#026B# => Group_0034'Access, 16#026C# => Group_0034'Access,
         16#026D# => Group_0034'Access, 16#026E# => Group_0034'Access,
         16#026F# => Group_0034'Access, 16#0270# => Group_0034'Access,
         16#0271# => Group_0034'Access, 16#0272# => Group_0034'Access,
         16#0273# => Group_0034'Access, 16#0274# => Group_0034'Access,
         16#0275# => Group_0034'Access, 16#0276# => Group_0034'Access,
         16#0277# => Group_0034'Access, 16#0278# => Group_0034'Access,
         16#0279# => Group_0034'Access, 16#027A# => Group_0034'Access,
         16#027B# => Group_0034'Access, 16#027C# => Group_0034'Access,
         16#027D# => Group_0034'Access, 16#027E# => Group_0034'Access,
         16#027F# => Group_0034'Access, 16#0280# => Group_0034'Access,
         16#0281# => Group_0034'Access, 16#0282# => Group_0034'Access,
         16#0283# => Group_0034'Access, 16#0284# => Group_0034'Access,
         16#0285# => Group_0034'Access, 16#0286# => Group_0034'Access,
         16#0287# => Group_0034'Access, 16#0288# => Group_0034'Access,
         16#0289# => Group_0034'Access, 16#028A# => Group_0034'Access,
         16#028B# => Group_0034'Access, 16#028C# => Group_0034'Access,
         16#028D# => Group_0034'Access, 16#028E# => Group_0034'Access,
         16#028F# => Group_0034'Access, 16#0290# => Group_0034'Access,
         16#0291# => Group_0034'Access, 16#0292# => Group_0034'Access,
         16#0293# => Group_0034'Access, 16#0294# => Group_0034'Access,
         16#0295# => Group_0034'Access, 16#0296# => Group_0034'Access,
         16#0297# => Group_0034'Access, 16#0298# => Group_0034'Access,
         16#0299# => Group_0034'Access, 16#029A# => Group_0034'Access,
         16#029B# => Group_0034'Access, 16#029C# => Group_0034'Access,
         16#029D# => Group_0034'Access, 16#029E# => Group_0034'Access,
         16#029F# => Group_0034'Access, 16#02A0# => Group_0034'Access,
         16#02A1# => Group_0034'Access, 16#02A2# => Group_0034'Access,
         16#02A3# => Group_0034'Access, 16#02A4# => Group_0034'Access,
         16#02A5# => Group_0034'Access, 16#02A6# => Group_02A6'Access,
         16#02F8# => Group_00F9'Access, 16#02F9# => Group_00F9'Access,
         16#02FA# => Group_02FA'Access, 16#02FF# => Group_01FF'Access,
         16#03FF# => Group_01FF'Access, 16#04FF# => Group_01FF'Access,
         16#05FF# => Group_01FF'Access, 16#06FF# => Group_01FF'Access,
         16#07FF# => Group_01FF'Access, 16#08FF# => Group_01FF'Access,
         16#09FF# => Group_01FF'Access, 16#0AFF# => Group_01FF'Access,
         16#0BFF# => Group_01FF'Access, 16#0CFF# => Group_01FF'Access,
         16#0DFF# => Group_01FF'Access, 16#0E00# => Group_0E00'Access,
         16#0E01# => Group_0E01'Access, 16#0E02# => Group_0E02'Access,
         16#0E03# => Group_0E02'Access, 16#0E04# => Group_0E02'Access,
         16#0E05# => Group_0E02'Access, 16#0E06# => Group_0E02'Access,
         16#0E07# => Group_0E02'Access, 16#0E08# => Group_0E02'Access,
         16#0E09# => Group_0E02'Access, 16#0E0A# => Group_0E02'Access,
         16#0E0B# => Group_0E02'Access, 16#0E0C# => Group_0E02'Access,
         16#0E0D# => Group_0E02'Access, 16#0E0E# => Group_0E02'Access,
         16#0E0F# => Group_0E02'Access, 16#0EFF# => Group_01FF'Access,
         16#0F00# => Group_00E0'Access, 16#0F01# => Group_00E0'Access,
         16#0F02# => Group_00E0'Access, 16#0F03# => Group_00E0'Access,
         16#0F04# => Group_00E0'Access, 16#0F05# => Group_00E0'Access,
         16#0F06# => Group_00E0'Access, 16#0F07# => Group_00E0'Access,
         16#0F08# => Group_00E0'Access, 16#0F09# => Group_00E0'Access,
         16#0F0A# => Group_00E0'Access, 16#0F0B# => Group_00E0'Access,
         16#0F0C# => Group_00E0'Access, 16#0F0D# => Group_00E0'Access,
         16#0F0E# => Group_00E0'Access, 16#0F0F# => Group_00E0'Access,
         16#0F10# => Group_00E0'Access, 16#0F11# => Group_00E0'Access,
         16#0F12# => Group_00E0'Access, 16#0F13# => Group_00E0'Access,
         16#0F14# => Group_00E0'Access, 16#0F15# => Group_00E0'Access,
         16#0F16# => Group_00E0'Access, 16#0F17# => Group_00E0'Access,
         16#0F18# => Group_00E0'Access, 16#0F19# => Group_00E0'Access,
         16#0F1A# => Group_00E0'Access, 16#0F1B# => Group_00E0'Access,
         16#0F1C# => Group_00E0'Access, 16#0F1D# => Group_00E0'Access,
         16#0F1E# => Group_00E0'Access, 16#0F1F# => Group_00E0'Access,
         16#0F20# => Group_00E0'Access, 16#0F21# => Group_00E0'Access,
         16#0F22# => Group_00E0'Access, 16#0F23# => Group_00E0'Access,
         16#0F24# => Group_00E0'Access, 16#0F25# => Group_00E0'Access,
         16#0F26# => Group_00E0'Access, 16#0F27# => Group_00E0'Access,
         16#0F28# => Group_00E0'Access, 16#0F29# => Group_00E0'Access,
         16#0F2A# => Group_00E0'Access, 16#0F2B# => Group_00E0'Access,
         16#0F2C# => Group_00E0'Access, 16#0F2D# => Group_00E0'Access,
         16#0F2E# => Group_00E0'Access, 16#0F2F# => Group_00E0'Access,
         16#0F30# => Group_00E0'Access, 16#0F31# => Group_00E0'Access,
         16#0F32# => Group_00E0'Access, 16#0F33# => Group_00E0'Access,
         16#0F34# => Group_00E0'Access, 16#0F35# => Group_00E0'Access,
         16#0F36# => Group_00E0'Access, 16#0F37# => Group_00E0'Access,
         16#0F38# => Group_00E0'Access, 16#0F39# => Group_00E0'Access,
         16#0F3A# => Group_00E0'Access, 16#0F3B# => Group_00E0'Access,
         16#0F3C# => Group_00E0'Access, 16#0F3D# => Group_00E0'Access,
         16#0F3E# => Group_00E0'Access, 16#0F3F# => Group_00E0'Access,
         16#0F40# => Group_00E0'Access, 16#0F41# => Group_00E0'Access,
         16#0F42# => Group_00E0'Access, 16#0F43# => Group_00E0'Access,
         16#0F44# => Group_00E0'Access, 16#0F45# => Group_00E0'Access,
         16#0F46# => Group_00E0'Access, 16#0F47# => Group_00E0'Access,
         16#0F48# => Group_00E0'Access, 16#0F49# => Group_00E0'Access,
         16#0F4A# => Group_00E0'Access, 16#0F4B# => Group_00E0'Access,
         16#0F4C# => Group_00E0'Access, 16#0F4D# => Group_00E0'Access,
         16#0F4E# => Group_00E0'Access, 16#0F4F# => Group_00E0'Access,
         16#0F50# => Group_00E0'Access, 16#0F51# => Group_00E0'Access,
         16#0F52# => Group_00E0'Access, 16#0F53# => Group_00E0'Access,
         16#0F54# => Group_00E0'Access, 16#0F55# => Group_00E0'Access,
         16#0F56# => Group_00E0'Access, 16#0F57# => Group_00E0'Access,
         16#0F58# => Group_00E0'Access, 16#0F59# => Group_00E0'Access,
         16#0F5A# => Group_00E0'Access, 16#0F5B# => Group_00E0'Access,
         16#0F5C# => Group_00E0'Access, 16#0F5D# => Group_00E0'Access,
         16#0F5E# => Group_00E0'Access, 16#0F5F# => Group_00E0'Access,
         16#0F60# => Group_00E0'Access, 16#0F61# => Group_00E0'Access,
         16#0F62# => Group_00E0'Access, 16#0F63# => Group_00E0'Access,
         16#0F64# => Group_00E0'Access, 16#0F65# => Group_00E0'Access,
         16#0F66# => Group_00E0'Access, 16#0F67# => Group_00E0'Access,
         16#0F68# => Group_00E0'Access, 16#0F69# => Group_00E0'Access,
         16#0F6A# => Group_00E0'Access, 16#0F6B# => Group_00E0'Access,
         16#0F6C# => Group_00E0'Access, 16#0F6D# => Group_00E0'Access,
         16#0F6E# => Group_00E0'Access, 16#0F6F# => Group_00E0'Access,
         16#0F70# => Group_00E0'Access, 16#0F71# => Group_00E0'Access,
         16#0F72# => Group_00E0'Access, 16#0F73# => Group_00E0'Access,
         16#0F74# => Group_00E0'Access, 16#0F75# => Group_00E0'Access,
         16#0F76# => Group_00E0'Access, 16#0F77# => Group_00E0'Access,
         16#0F78# => Group_00E0'Access, 16#0F79# => Group_00E0'Access,
         16#0F7A# => Group_00E0'Access, 16#0F7B# => Group_00E0'Access,
         16#0F7C# => Group_00E0'Access, 16#0F7D# => Group_00E0'Access,
         16#0F7E# => Group_00E0'Access, 16#0F7F# => Group_00E0'Access,
         16#0F80# => Group_00E0'Access, 16#0F81# => Group_00E0'Access,
         16#0F82# => Group_00E0'Access, 16#0F83# => Group_00E0'Access,
         16#0F84# => Group_00E0'Access, 16#0F85# => Group_00E0'Access,
         16#0F86# => Group_00E0'Access, 16#0F87# => Group_00E0'Access,
         16#0F88# => Group_00E0'Access, 16#0F89# => Group_00E0'Access,
         16#0F8A# => Group_00E0'Access, 16#0F8B# => Group_00E0'Access,
         16#0F8C# => Group_00E0'Access, 16#0F8D# => Group_00E0'Access,
         16#0F8E# => Group_00E0'Access, 16#0F8F# => Group_00E0'Access,
         16#0F90# => Group_00E0'Access, 16#0F91# => Group_00E0'Access,
         16#0F92# => Group_00E0'Access, 16#0F93# => Group_00E0'Access,
         16#0F94# => Group_00E0'Access, 16#0F95# => Group_00E0'Access,
         16#0F96# => Group_00E0'Access, 16#0F97# => Group_00E0'Access,
         16#0F98# => Group_00E0'Access, 16#0F99# => Group_00E0'Access,
         16#0F9A# => Group_00E0'Access, 16#0F9B# => Group_00E0'Access,
         16#0F9C# => Group_00E0'Access, 16#0F9D# => Group_00E0'Access,
         16#0F9E# => Group_00E0'Access, 16#0F9F# => Group_00E0'Access,
         16#0FA0# => Group_00E0'Access, 16#0FA1# => Group_00E0'Access,
         16#0FA2# => Group_00E0'Access, 16#0FA3# => Group_00E0'Access,
         16#0FA4# => Group_00E0'Access, 16#0FA5# => Group_00E0'Access,
         16#0FA6# => Group_00E0'Access, 16#0FA7# => Group_00E0'Access,
         16#0FA8# => Group_00E0'Access, 16#0FA9# => Group_00E0'Access,
         16#0FAA# => Group_00E0'Access, 16#0FAB# => Group_00E0'Access,
         16#0FAC# => Group_00E0'Access, 16#0FAD# => Group_00E0'Access,
         16#0FAE# => Group_00E0'Access, 16#0FAF# => Group_00E0'Access,
         16#0FB0# => Group_00E0'Access, 16#0FB1# => Group_00E0'Access,
         16#0FB2# => Group_00E0'Access, 16#0FB3# => Group_00E0'Access,
         16#0FB4# => Group_00E0'Access, 16#0FB5# => Group_00E0'Access,
         16#0FB6# => Group_00E0'Access, 16#0FB7# => Group_00E0'Access,
         16#0FB8# => Group_00E0'Access, 16#0FB9# => Group_00E0'Access,
         16#0FBA# => Group_00E0'Access, 16#0FBB# => Group_00E0'Access,
         16#0FBC# => Group_00E0'Access, 16#0FBD# => Group_00E0'Access,
         16#0FBE# => Group_00E0'Access, 16#0FBF# => Group_00E0'Access,
         16#0FC0# => Group_00E0'Access, 16#0FC1# => Group_00E0'Access,
         16#0FC2# => Group_00E0'Access, 16#0FC3# => Group_00E0'Access,
         16#0FC4# => Group_00E0'Access, 16#0FC5# => Group_00E0'Access,
         16#0FC6# => Group_00E0'Access, 16#0FC7# => Group_00E0'Access,
         16#0FC8# => Group_00E0'Access, 16#0FC9# => Group_00E0'Access,
         16#0FCA# => Group_00E0'Access, 16#0FCB# => Group_00E0'Access,
         16#0FCC# => Group_00E0'Access, 16#0FCD# => Group_00E0'Access,
         16#0FCE# => Group_00E0'Access, 16#0FCF# => Group_00E0'Access,
         16#0FD0# => Group_00E0'Access, 16#0FD1# => Group_00E0'Access,
         16#0FD2# => Group_00E0'Access, 16#0FD3# => Group_00E0'Access,
         16#0FD4# => Group_00E0'Access, 16#0FD5# => Group_00E0'Access,
         16#0FD6# => Group_00E0'Access, 16#0FD7# => Group_00E0'Access,
         16#0FD8# => Group_00E0'Access, 16#0FD9# => Group_00E0'Access,
         16#0FDA# => Group_00E0'Access, 16#0FDB# => Group_00E0'Access,
         16#0FDC# => Group_00E0'Access, 16#0FDD# => Group_00E0'Access,
         16#0FDE# => Group_00E0'Access, 16#0FDF# => Group_00E0'Access,
         16#0FE0# => Group_00E0'Access, 16#0FE1# => Group_00E0'Access,
         16#0FE2# => Group_00E0'Access, 16#0FE3# => Group_00E0'Access,
         16#0FE4# => Group_00E0'Access, 16#0FE5# => Group_00E0'Access,
         16#0FE6# => Group_00E0'Access, 16#0FE7# => Group_00E0'Access,
         16#0FE8# => Group_00E0'Access, 16#0FE9# => Group_00E0'Access,
         16#0FEA# => Group_00E0'Access, 16#0FEB# => Group_00E0'Access,
         16#0FEC# => Group_00E0'Access, 16#0FED# => Group_00E0'Access,
         16#0FEE# => Group_00E0'Access, 16#0FEF# => Group_00E0'Access,
         16#0FF0# => Group_00E0'Access, 16#0FF1# => Group_00E0'Access,
         16#0FF2# => Group_00E0'Access, 16#0FF3# => Group_00E0'Access,
         16#0FF4# => Group_00E0'Access, 16#0FF5# => Group_00E0'Access,
         16#0FF6# => Group_00E0'Access, 16#0FF7# => Group_00E0'Access,
         16#0FF8# => Group_00E0'Access, 16#0FF9# => Group_00E0'Access,
         16#0FFA# => Group_00E0'Access, 16#0FFB# => Group_00E0'Access,
         16#0FFC# => Group_00E0'Access, 16#0FFD# => Group_00E0'Access,
         16#0FFE# => Group_00E0'Access, 16#0FFF# => Group_0FFF'Access,
         16#1000# => Group_00E0'Access, 16#1001# => Group_00E0'Access,
         16#1002# => Group_00E0'Access, 16#1003# => Group_00E0'Access,
         16#1004# => Group_00E0'Access, 16#1005# => Group_00E0'Access,
         16#1006# => Group_00E0'Access, 16#1007# => Group_00E0'Access,
         16#1008# => Group_00E0'Access, 16#1009# => Group_00E0'Access,
         16#100A# => Group_00E0'Access, 16#100B# => Group_00E0'Access,
         16#100C# => Group_00E0'Access, 16#100D# => Group_00E0'Access,
         16#100E# => Group_00E0'Access, 16#100F# => Group_00E0'Access,
         16#1010# => Group_00E0'Access, 16#1011# => Group_00E0'Access,
         16#1012# => Group_00E0'Access, 16#1013# => Group_00E0'Access,
         16#1014# => Group_00E0'Access, 16#1015# => Group_00E0'Access,
         16#1016# => Group_00E0'Access, 16#1017# => Group_00E0'Access,
         16#1018# => Group_00E0'Access, 16#1019# => Group_00E0'Access,
         16#101A# => Group_00E0'Access, 16#101B# => Group_00E0'Access,
         16#101C# => Group_00E0'Access, 16#101D# => Group_00E0'Access,
         16#101E# => Group_00E0'Access, 16#101F# => Group_00E0'Access,
         16#1020# => Group_00E0'Access, 16#1021# => Group_00E0'Access,
         16#1022# => Group_00E0'Access, 16#1023# => Group_00E0'Access,
         16#1024# => Group_00E0'Access, 16#1025# => Group_00E0'Access,
         16#1026# => Group_00E0'Access, 16#1027# => Group_00E0'Access,
         16#1028# => Group_00E0'Access, 16#1029# => Group_00E0'Access,
         16#102A# => Group_00E0'Access, 16#102B# => Group_00E0'Access,
         16#102C# => Group_00E0'Access, 16#102D# => Group_00E0'Access,
         16#102E# => Group_00E0'Access, 16#102F# => Group_00E0'Access,
         16#1030# => Group_00E0'Access, 16#1031# => Group_00E0'Access,
         16#1032# => Group_00E0'Access, 16#1033# => Group_00E0'Access,
         16#1034# => Group_00E0'Access, 16#1035# => Group_00E0'Access,
         16#1036# => Group_00E0'Access, 16#1037# => Group_00E0'Access,
         16#1038# => Group_00E0'Access, 16#1039# => Group_00E0'Access,
         16#103A# => Group_00E0'Access, 16#103B# => Group_00E0'Access,
         16#103C# => Group_00E0'Access, 16#103D# => Group_00E0'Access,
         16#103E# => Group_00E0'Access, 16#103F# => Group_00E0'Access,
         16#1040# => Group_00E0'Access, 16#1041# => Group_00E0'Access,
         16#1042# => Group_00E0'Access, 16#1043# => Group_00E0'Access,
         16#1044# => Group_00E0'Access, 16#1045# => Group_00E0'Access,
         16#1046# => Group_00E0'Access, 16#1047# => Group_00E0'Access,
         16#1048# => Group_00E0'Access, 16#1049# => Group_00E0'Access,
         16#104A# => Group_00E0'Access, 16#104B# => Group_00E0'Access,
         16#104C# => Group_00E0'Access, 16#104D# => Group_00E0'Access,
         16#104E# => Group_00E0'Access, 16#104F# => Group_00E0'Access,
         16#1050# => Group_00E0'Access, 16#1051# => Group_00E0'Access,
         16#1052# => Group_00E0'Access, 16#1053# => Group_00E0'Access,
         16#1054# => Group_00E0'Access, 16#1055# => Group_00E0'Access,
         16#1056# => Group_00E0'Access, 16#1057# => Group_00E0'Access,
         16#1058# => Group_00E0'Access, 16#1059# => Group_00E0'Access,
         16#105A# => Group_00E0'Access, 16#105B# => Group_00E0'Access,
         16#105C# => Group_00E0'Access, 16#105D# => Group_00E0'Access,
         16#105E# => Group_00E0'Access, 16#105F# => Group_00E0'Access,
         16#1060# => Group_00E0'Access, 16#1061# => Group_00E0'Access,
         16#1062# => Group_00E0'Access, 16#1063# => Group_00E0'Access,
         16#1064# => Group_00E0'Access, 16#1065# => Group_00E0'Access,
         16#1066# => Group_00E0'Access, 16#1067# => Group_00E0'Access,
         16#1068# => Group_00E0'Access, 16#1069# => Group_00E0'Access,
         16#106A# => Group_00E0'Access, 16#106B# => Group_00E0'Access,
         16#106C# => Group_00E0'Access, 16#106D# => Group_00E0'Access,
         16#106E# => Group_00E0'Access, 16#106F# => Group_00E0'Access,
         16#1070# => Group_00E0'Access, 16#1071# => Group_00E0'Access,
         16#1072# => Group_00E0'Access, 16#1073# => Group_00E0'Access,
         16#1074# => Group_00E0'Access, 16#1075# => Group_00E0'Access,
         16#1076# => Group_00E0'Access, 16#1077# => Group_00E0'Access,
         16#1078# => Group_00E0'Access, 16#1079# => Group_00E0'Access,
         16#107A# => Group_00E0'Access, 16#107B# => Group_00E0'Access,
         16#107C# => Group_00E0'Access, 16#107D# => Group_00E0'Access,
         16#107E# => Group_00E0'Access, 16#107F# => Group_00E0'Access,
         16#1080# => Group_00E0'Access, 16#1081# => Group_00E0'Access,
         16#1082# => Group_00E0'Access, 16#1083# => Group_00E0'Access,
         16#1084# => Group_00E0'Access, 16#1085# => Group_00E0'Access,
         16#1086# => Group_00E0'Access, 16#1087# => Group_00E0'Access,
         16#1088# => Group_00E0'Access, 16#1089# => Group_00E0'Access,
         16#108A# => Group_00E0'Access, 16#108B# => Group_00E0'Access,
         16#108C# => Group_00E0'Access, 16#108D# => Group_00E0'Access,
         16#108E# => Group_00E0'Access, 16#108F# => Group_00E0'Access,
         16#1090# => Group_00E0'Access, 16#1091# => Group_00E0'Access,
         16#1092# => Group_00E0'Access, 16#1093# => Group_00E0'Access,
         16#1094# => Group_00E0'Access, 16#1095# => Group_00E0'Access,
         16#1096# => Group_00E0'Access, 16#1097# => Group_00E0'Access,
         16#1098# => Group_00E0'Access, 16#1099# => Group_00E0'Access,
         16#109A# => Group_00E0'Access, 16#109B# => Group_00E0'Access,
         16#109C# => Group_00E0'Access, 16#109D# => Group_00E0'Access,
         16#109E# => Group_00E0'Access, 16#109F# => Group_00E0'Access,
         16#10A0# => Group_00E0'Access, 16#10A1# => Group_00E0'Access,
         16#10A2# => Group_00E0'Access, 16#10A3# => Group_00E0'Access,
         16#10A4# => Group_00E0'Access, 16#10A5# => Group_00E0'Access,
         16#10A6# => Group_00E0'Access, 16#10A7# => Group_00E0'Access,
         16#10A8# => Group_00E0'Access, 16#10A9# => Group_00E0'Access,
         16#10AA# => Group_00E0'Access, 16#10AB# => Group_00E0'Access,
         16#10AC# => Group_00E0'Access, 16#10AD# => Group_00E0'Access,
         16#10AE# => Group_00E0'Access, 16#10AF# => Group_00E0'Access,
         16#10B0# => Group_00E0'Access, 16#10B1# => Group_00E0'Access,
         16#10B2# => Group_00E0'Access, 16#10B3# => Group_00E0'Access,
         16#10B4# => Group_00E0'Access, 16#10B5# => Group_00E0'Access,
         16#10B6# => Group_00E0'Access, 16#10B7# => Group_00E0'Access,
         16#10B8# => Group_00E0'Access, 16#10B9# => Group_00E0'Access,
         16#10BA# => Group_00E0'Access, 16#10BB# => Group_00E0'Access,
         16#10BC# => Group_00E0'Access, 16#10BD# => Group_00E0'Access,
         16#10BE# => Group_00E0'Access, 16#10BF# => Group_00E0'Access,
         16#10C0# => Group_00E0'Access, 16#10C1# => Group_00E0'Access,
         16#10C2# => Group_00E0'Access, 16#10C3# => Group_00E0'Access,
         16#10C4# => Group_00E0'Access, 16#10C5# => Group_00E0'Access,
         16#10C6# => Group_00E0'Access, 16#10C7# => Group_00E0'Access,
         16#10C8# => Group_00E0'Access, 16#10C9# => Group_00E0'Access,
         16#10CA# => Group_00E0'Access, 16#10CB# => Group_00E0'Access,
         16#10CC# => Group_00E0'Access, 16#10CD# => Group_00E0'Access,
         16#10CE# => Group_00E0'Access, 16#10CF# => Group_00E0'Access,
         16#10D0# => Group_00E0'Access, 16#10D1# => Group_00E0'Access,
         16#10D2# => Group_00E0'Access, 16#10D3# => Group_00E0'Access,
         16#10D4# => Group_00E0'Access, 16#10D5# => Group_00E0'Access,
         16#10D6# => Group_00E0'Access, 16#10D7# => Group_00E0'Access,
         16#10D8# => Group_00E0'Access, 16#10D9# => Group_00E0'Access,
         16#10DA# => Group_00E0'Access, 16#10DB# => Group_00E0'Access,
         16#10DC# => Group_00E0'Access, 16#10DD# => Group_00E0'Access,
         16#10DE# => Group_00E0'Access, 16#10DF# => Group_00E0'Access,
         16#10E0# => Group_00E0'Access, 16#10E1# => Group_00E0'Access,
         16#10E2# => Group_00E0'Access, 16#10E3# => Group_00E0'Access,
         16#10E4# => Group_00E0'Access, 16#10E5# => Group_00E0'Access,
         16#10E6# => Group_00E0'Access, 16#10E7# => Group_00E0'Access,
         16#10E8# => Group_00E0'Access, 16#10E9# => Group_00E0'Access,
         16#10EA# => Group_00E0'Access, 16#10EB# => Group_00E0'Access,
         16#10EC# => Group_00E0'Access, 16#10ED# => Group_00E0'Access,
         16#10EE# => Group_00E0'Access, 16#10EF# => Group_00E0'Access,
         16#10F0# => Group_00E0'Access, 16#10F1# => Group_00E0'Access,
         16#10F2# => Group_00E0'Access, 16#10F3# => Group_00E0'Access,
         16#10F4# => Group_00E0'Access, 16#10F5# => Group_00E0'Access,
         16#10F6# => Group_00E0'Access, 16#10F7# => Group_00E0'Access,
         16#10F8# => Group_00E0'Access, 16#10F9# => Group_00E0'Access,
         16#10FA# => Group_00E0'Access, 16#10FB# => Group_00E0'Access,
         16#10FC# => Group_00E0'Access, 16#10FD# => Group_00E0'Access,
         16#10FE# => Group_00E0'Access, 16#10FF# => Group_0FFF'Access,
         others   => Group_0008'Access);

end Matreshka.Internals.Ucd.Core;
