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
with League.Application;
with Matreshka.Internals.Settings.Configuration_Files;

package body Matreshka.Internals.Settings.Fallbacks is

   use type League.Strings.Universal_String;

   function User_Path return League.Strings.Universal_String;
   --  Returns path where user's settings are stored. Returned path has
   --  trailing path separator.

   function System_Paths return League.Strings.Universal_String_Vector;
   --  Returns paths where system settings are stored. Returned path has
   --  trailing path separator.

   function Extension return League.Strings.Universal_String;
   --  Returns configuration file extention.
   --  XXX .conf and .ini are used depending of platform and format, but not
   --  yet implemented.

   function Application_File_Name
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Constructs file name of application's settings file.

   function Organization_File_Name
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Constructs file name of organization's settings file.

   Unknown_Organization : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Unknown Organization");
   HOME                 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HOME");
   XDG_CONFIG_HOME      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("XDG_CONFIG_HOME");
   XDG_CONFIG_DIRS      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("XDG_CONFIG_DIRS");

   ---------------------------
   -- Application_File_Name --
   ---------------------------

   function Application_File_Name
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      if League.Application.Application_Name.Is_Empty then
         return Organization_File_Name (Path);

      else
         if League.Application.Organization_Name.Is_Empty then
            return
              Path
                & Unknown_Organization
                & '/'
                & League.Application.Application_Name
                & Extension;

         else
            return
              Path
                & League.Application.Organization_Name
                & '/'
                & League.Application.Application_Name
                & Extension;
         end if;
      end if;
   end Application_File_Name;

   --------------
   -- Contains --
   --------------

   overriding function Contains
    (Self : Fallback_Settings;
     Key  : League.Strings.Universal_String) return Boolean is
   begin
      for J in 1 .. Natural (Self.Storages.Length) loop
         if Self.Storages.Element (J).Contains (Key) then
            return True;
         end if;
      end loop;

      return False;
   end Contains;

   ------------
   -- Create --
   ------------

   function Create return not null Settings_Access is
   begin
      return Aux : constant not null Settings_Access
        := new Fallback_Settings
      do
         declare
            Self  : Fallback_Settings'Class
              renames Fallback_Settings'Class (Aux.all);
            Paths : constant League.Strings.Universal_String_Vector
              := System_Paths;

         begin
            --  Append user's application and organization files.

            Self.Storages.Append
             (Matreshka.Internals.Settings.Configuration_Files.Create
               (Application_File_Name (User_Path)));

            if Organization_File_Name (User_Path)
                 /= Application_File_Name (User_Path)
            then
               Self.Storages.Append
                (Matreshka.Internals.Settings.Configuration_Files.Create
                  (Organization_File_Name (User_Path)));
            end if;

            --  Append system's application and organization files for every
            --  system configuration directory.

            for J in 1 .. Paths.Length loop
               Self.Storages.Append
                (Matreshka.Internals.Settings.Configuration_Files.Create
                  (Application_File_Name (Paths.Element (J))));

               if Organization_File_Name (Paths.Element (J))
                    /= Application_File_Name (Paths.Element (J))
               then
                  Self.Storages.Append
                   (Matreshka.Internals.Settings.Configuration_Files.Create
                     (Organization_File_Name (Paths.Element (J))));
               end if;
            end loop;
         end;
      end return;
   end Create;

   ---------------
   -- Extension --
   ---------------

   function Extension return League.Strings.Universal_String is
   begin
      return League.Strings.To_Universal_String (".conf");
   end Extension;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize
    (Self : not null access Fallback_Settings) is
   begin
      for J in 1 .. Natural (Self.Storages.Length) loop
         declare
            Aux : Settings_Access := Self.Storages.Element (J);

         begin
            Dereference (Aux);
         end;
      end loop;

      Self.Storages.Clear;
   end Finalize;

   ----------------------------
   -- Organization_File_Name --
   ----------------------------

   function Organization_File_Name
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      if League.Application.Organization_Name.Is_Empty then
         return Path & Unknown_Organization & Extension;

      else
         return Path & League.Application.Organization_Name & Extension;
      end if;
   end Organization_File_Name;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self  : in out Fallback_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value) is
   begin
      Self.Storages.First_Element.Set_Value (Key, Value);
   end Set_Value;

   ----------
   -- Sync --
   ----------

   overriding procedure Sync (Self : in out Fallback_Settings) is
   begin
      Self.Storages.First_Element.Sync;
   end Sync;

   ------------------
   -- System_Paths --
   ------------------

   function System_Paths return League.Strings.Universal_String_Vector is
      Dirs  : League.Strings.Universal_String_Vector;
      Path  : League.Strings.Universal_String;
      Paths : League.Strings.Universal_String_Vector;

   begin
      --  Looking for XDG_CONFIG_DIRS environment variable and construct list
      --  directories from its value.

      if League.Application.Environment.Contains (XDG_CONFIG_DIRS) then
         Dirs :=
           League.Application.Environment.Value
            (XDG_CONFIG_DIRS).Split (':', League.Strings.Skip_Empty);

         for J in 1 .. Dirs.Length loop
            Path := Dirs.Element (J);

            --  Resolve relative paths relativealy home directory.

            if Path.Element (1) /= '/' then
               Path :=
                 League.Application.Environment.Value (HOME) & '/' & Path;
            end if;

            --  Check for trailing path separator and add it when necessary.

            if Path.Element (Path.Length) /= '/' then
               Path.Append ('/');
            end if;

            Paths.Append (Path);
         end loop;
      end if;

      --  Use default directory when directories list is not constructed.

      if Paths.Is_Empty then
         Paths.Append (League.Strings.To_Universal_String ("/etc/xdg/"));
      end if;

      return Paths;
   end System_Paths;

   ---------------
   -- User_Path --
   ---------------

   function User_Path return League.Strings.Universal_String is
      Path : League.Strings.Universal_String;

   begin
      --  First, looking for XDG_CONFIG_HOME environment variable, it overrides
      --  default path.

      if League.Application.Environment.Contains (XDG_CONFIG_HOME) then
         Path := League.Application.Environment.Value (XDG_CONFIG_HOME);
      end if;

      --  When XDG_CONFIG_HOME environment variable is not defined, use
      --  $HOME/.config directory.

      if Path.Is_Empty then
         Path := League.Application.Environment.Value (HOME) & '/' & ".config";

      --  Otherwise, when XDG_CONFIG_HOME is relative path, construct full
      --  path as $HOME/$XDG_CONFIG_HOME.

      elsif Path.Element (1).To_Wide_Wide_Character /= '/' then
         Path := League.Application.Environment.Value (HOME) & '/' & Path;
      end if;

      --  Check for trailing path separator and add it when necessary.

      if Path.Element (Path.Length) /= '/' then
         Path.Append ('/');
      end if;

      return Path;
   end User_Path;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self : Fallback_Settings;
     Key  : League.Strings.Universal_String)
       return League.Values.Value is
   begin
      for J in 1 .. Natural (Self.Storages.Length) loop
         if Self.Storages.Element (J).Contains (Key) then
            return Self.Storages.Element (J).Value (Key);
         end if;
      end loop;

      return X : League.Values.Value;
   end Value;

end Matreshka.Internals.Settings.Fallbacks;
