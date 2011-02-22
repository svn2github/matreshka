------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
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
with Interfaces.C;

with League.Strings.Internals;
with Matreshka.Internals.SQL_Queries.SQLite3;
with Matreshka.Internals.SQLite3.String_Utilities;
with Matreshka.Internals.Utf16;
with SQL;

package body Matreshka.Internals.SQL_Databases.SQLite3 is

   use type Interfaces.C.int;
   use type Matreshka.Internals.SQLite3.sqlite3_Access;

--   procedure puts (Item : String);
--   pragma Import (C, puts);

   procedure Call
    (Self : not null access SQLite3_Database'Class;
     Code : Interfaces.C.int);
   --  Process return code, constructs error message when code is error.

   ----------
   -- Call --
   ----------

   procedure Call
    (Self : not null access SQLite3_Database'Class;
     Code : Interfaces.C.int) is
   begin
      --  Clear previous error state.

      Self.Success := True;
      Self.Error.Clear;

      case Code is
         when Matreshka.Internals.SQLite3.SQLITE_OK =>
            null;

         when others =>
            Self.Success := False;
            Self.Error :=
              Matreshka.Internals.SQLite3.String_Utilities.To_Universal_String
               (Matreshka.Internals.SQLite3.sqlite3_errmsg16 (Self.Handle));
      end case;
   end Call;

   -----------
   -- Close --
   -----------

   overriding procedure Close (Self : not null access SQLite3_Database) is
   begin
      if Self.Handle /= null then
         Self.Call (Matreshka.Internals.SQLite3.sqlite3_close (Self.Handle));
         Self.Handle := null;
      end if;
   end Close;

   ------------
   -- Commit --
   ------------

   overriding procedure Commit (Self : not null access SQLite3_Database) is
   begin
      if Self.Handle /= null then
         declare
            Query : Matreshka.Internals.SQL_Queries.Query_Access := Self.Query;

         begin
            if not Query.Prepare
                    (League.Strings.To_Universal_String ("COMMIT"))
            then
               Self.Success := False;
               Self.Error := Query.Error_Message;

            elsif not Query.Execute then
               Self.Success := False;
               Self.Error := Query.Error_Message;
            end if;

            Matreshka.Internals.SQL_Queries.Dereference (Query);
         end;
      end if;
   end Commit;

   ---------------------
   -- Database_Handle --
   ---------------------

   function Database_Handle
    (Self : not null access constant SQLite3_Database'Class)
       return Matreshka.Internals.SQLite3.sqlite3_Access is
   begin
      return Self.Handle;
   end Database_Handle;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access SQLite3_Database)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : not null access SQLite3_Database) is
   begin
      if Self.Handle /= null then
         Self.Close;
      end if;
   end Finalize;

   ----------
   -- Open --
   ----------

   overriding function Open
    (Self    : not null access SQLite3_Database;
     Options : League.Strings.Universal_String) return Boolean
   is
      Name : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("test.db");

   begin
      if Self.Handle = null then
         Self.Call
          (Matreshka.Internals.SQLite3.sqlite3_open16
            (League.Strings.Internals.Internal (Name).Value,
             Self.Handle'Unchecked_Access));

      else
         Self.Success := False;
      end if;

      return Self.Success;
   end Open;

   -----------
   -- Query --
   -----------

   overriding function Query
    (Self : not null access SQLite3_Database)
       return not null Matreshka.Internals.SQL_Queries.Query_Access is
   begin
      return new Matreshka.Internals.SQL_Queries.SQLite3.SQLite3_Query (Self);
   end Query;

end Matreshka.Internals.SQL_Databases.SQLite3;
