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
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Ucd.Cases;
with Matreshka.Internals.Ucd.Colls;
with Matreshka.Internals.Ucd.Core;
with Matreshka.Internals.Ucd.Two_Stage_Tables;

package body Matreshka.Internals.Locales is

   Default_Locale : aliased Locale_Data
     := (Core      => Matreshka.Internals.Ucd.Core.Property'Access,
         Casing    =>
          (Expansion => Matreshka.Internals.Ucd.Cases.Data'Access,
           Context   => Matreshka.Internals.Ucd.Cases.Context'Access,
           Mapping   => Matreshka.Internals.Ucd.Cases.Mapping'Access),
         Collation =>
          (Expansion     =>
             Matreshka.Internals.Ucd.Colls.Expansion_Data'Access,
           Contraction   =>
             Matreshka.Internals.Ucd.Colls.Contraction_Data'Access,
           Mapping       =>
             Matreshka.Internals.Ucd.Colls.Collation'Access,
           Last_Variable => Matreshka.Internals.Ucd.Colls.Last_Variable,
           Backwards     => False),
         others        => <>);

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Locale_Data_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation (Locale_Data, Locale_Data_Access);

   begin
      if Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         pragma Assert (Self /= Default_Locale'Access);

         Free (Self);
      end if;
   end Dereference;

   --------------
   -- Get_Core --
   --------------

   function Get_Core
    (Self : not null access Locale_Data'Class;
     Code : Matreshka.Internals.Unicode.Code_Point)
       return Matreshka.Internals.Ucd.Core_Values
   is

      function Get is
        new Matreshka.Internals.Ucd.Two_Stage_Tables.Generic_Get
             (Matreshka.Internals.Ucd.Core_Values,
              Matreshka.Internals.Ucd.Core_Second_Stage,
              Matreshka.Internals.Ucd.Core_Second_Stage_Access,
              Matreshka.Internals.Ucd.Core_First_Stage);

   begin
      return Get (Self.Core.all, Code);
   end Get_Core;

   ----------------
   -- Get_Locale --
   ----------------

   function Get_Locale return not null Locale_Data_Access is
      Result : constant not null Locale_Data_Access := Default_Locale'Access;

   begin
      Reference (Result);

      return Result;
   end Get_Locale;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Locale_Data_Access) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

end Matreshka.Internals.Locales;
