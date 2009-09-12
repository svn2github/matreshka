
package Unicode is

   subtype Unicode_Character is Wide_Wide_Character
     range Wide_Wide_Character'Val (16#00_0000#)
             .. Wide_Wide_Character'Val (16#10_FFFF#);

   BEL : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.BEL));
   BS  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.BS));
   CR  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.CR));
   FF  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.FF));
   HT  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.HT));
   LF  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.LF));
   NUL : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.NUL));
   SOH : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.SOH));
   VT  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.VT));

end Unicode;
