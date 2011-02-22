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
--  This package is low level bindings to SQLite3 library.
------------------------------------------------------------------------------
with Interfaces.C;

with Matreshka.Internals.Utf16;

package Matreshka.Internals.SQLite3 is

   pragma Preelaborate;

   ----------------
   -- Data types --
   ----------------

   type sqlite3 is private;

   type sqlite3_Access is access all sqlite3;
   pragma Convention (C, sqlite3_Access);

   type sqlite3_stmt is private;

   type sqlite3_stmt_Access is access all sqlite3_stmt;
   pragma Convention (C, sqlite3_stmt_Access);

   type Utf16_Code_Unit_Access is
     access all Matreshka.Internals.Utf16.Utf16_Code_Unit;

   ---------------
   -- Constants --
   ---------------

   SQLITE_OK          : constant := 0;  --  Successful result

--#define SQLITE_ERROR        1   /* SQL error or missing database */
--#define SQLITE_INTERNAL     2   /* Internal logic error in SQLite */
--#define SQLITE_PERM         3   /* Access permission denied */
--#define SQLITE_ABORT        4   /* Callback routine requested an abort */
--#define SQLITE_BUSY         5   /* The database file is locked */
--#define SQLITE_LOCKED       6   /* A table in the database is locked */
--#define SQLITE_NOMEM        7   /* A malloc() failed */
--#define SQLITE_READONLY     8   /* Attempt to write a readonly database */
--#define SQLITE_INTERRUPT    9   /* Operation terminated by sqlite3_interrupt()*/
--#define SQLITE_IOERR       10   /* Some kind of disk I/O error occurred */
--#define SQLITE_CORRUPT     11   /* The database disk image is malformed */
--#define SQLITE_NOTFOUND    12   /* Unknown opcode in sqlite3_file_control() */
--#define SQLITE_FULL        13   /* Insertion failed because database is full */
--#define SQLITE_CANTOPEN    14   /* Unable to open the database file */
--#define SQLITE_PROTOCOL    15   /* Database lock protocol error */
--#define SQLITE_EMPTY       16   /* Database is empty */
--#define SQLITE_SCHEMA      17   /* The database schema changed */
--#define SQLITE_TOOBIG      18   /* String or BLOB exceeds size limit */
--#define SQLITE_CONSTRAINT  19   /* Abort due to constraint violation */
--#define SQLITE_MISMATCH    20   /* Data type mismatch */
--#define SQLITE_MISUSE      21   /* Library used incorrectly */
--#define SQLITE_NOLFS       22   /* Uses OS features not supported on host */
--#define SQLITE_AUTH        23   /* Authorization denied */
--#define SQLITE_FORMAT      24   /* Auxiliary database format error */
--#define SQLITE_RANGE       25   /* 2nd parameter to sqlite3_bind out of range */
--#define SQLITE_NOTADB      26   /* File opened that is not a database file */
--#define SQLITE_ROW         100  /* sqlite3_step() has another row ready */
   SQLITE_DONE       : constant := 101;  --  sqlite3_step() has finished
                                         --  executing


   ---------------
   -- Functions --
   ---------------

   function sqlite3_close (Handle : sqlite3_Access) return Interfaces.C.int;
   pragma Import (C, sqlite3_close);

   function sqlite3_finalize
    (Handle : sqlite3_stmt_Access) return Interfaces.C.int;
   pragma Import (C, sqlite3_finalize);

   function sqlite3_open16
    (File_Name : Matreshka.Internals.Utf16.Utf16_String;
--     Handle    : out sqlite3_Access) return Interfaces.C.int;
     Handle    : not null access sqlite3_Access) return Interfaces.C.int;
   pragma Import (C, sqlite3_open16);

   function sqlite3_prepare16_v2
    (db     : sqlite3_Access;
     zSql   : Matreshka.Internals.Utf16.Utf16_String;
     nByte  : Interfaces.C.int;
--     ppStmt : out sqlite3_stmt_Access;
--     pzTail : out Utf16_Code_Unit_Access) return Interfaces.C.int;
     ppStmt : not null access sqlite3_stmt_Access;
     pzTail : not null access Utf16_Code_Unit_Access) return Interfaces.C.int;
   pragma Import (C, sqlite3_prepare16_v2);

   function sqlite3_step
    (Handle : sqlite3_stmt_Access) return Interfaces.C.int;
   pragma Import (C, sqlite3_step);

private

   type sqlite3 is null record;

   type sqlite3_stmt is null record;

end Matreshka.Internals.SQLite3;
