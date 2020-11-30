pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Dbus.Low_Level.dbus_dbus_arch_deps_h;
with Interfaces.C.Strings;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-types.h  types such as dbus_bool_t
  -- *
  -- * Copyright (C) 2002  Red Hat Inc.
  -- *
  -- * Licensed under the Academic Free License version 2.1
  -- * 
  -- * This program is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 2 of the License, or
  -- * (at your option) any later version.
  -- *
  -- * This program is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  -- * GNU General Public License for more details.
  -- * 
  -- * You should have received a copy of the GNU General Public License
  -- * along with this program; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
  -- *
  --  

   subtype dbus_unichar_t is Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:33

  -- boolean size must be fixed at 4 bytes due to wire protocol!  
   subtype dbus_bool_t is Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:35

  -- Normally docs are in .c files, but there isn't a .c file for this.  
  --*
  -- * @defgroup DBusTypes Basic types
  -- * @ingroup  DBus
  -- * @brief dbus_bool_t, dbus_int32_t, etc.
  -- *
  -- * Typedefs for common primitive types.
  -- *
  -- * @{
  --  

  --*
  -- * @typedef dbus_bool_t
  -- *
  -- * A boolean, valid values are #TRUE and #FALSE.
  --  

  --*
  -- * @typedef dbus_uint32_t
  -- *
  -- * A 32-bit unsigned integer on all platforms.
  --  

  --*
  -- * @typedef dbus_int32_t
  -- *
  -- * A 32-bit signed integer on all platforms.
  --  

  --*
  -- * @typedef dbus_uint16_t
  -- *
  -- * A 16-bit unsigned integer on all platforms.
  --  

  --*
  -- * @typedef dbus_int16_t
  -- *
  -- * A 16-bit signed integer on all platforms.
  --  

  --*
  -- * @typedef dbus_uint64_t
  -- *
  -- * A 64-bit unsigned integer.
  --  

  --*
  -- * @typedef dbus_int64_t
  -- *
  -- * A 64-bit signed integer.
  --  

  --*
  -- * @def DBUS_HAVE_INT64
  -- *
  -- * Always defined.
  -- *
  -- * In older libdbus versions, this would be undefined if there was no
  -- * 64-bit integer type on that platform. libdbus no longer supports
  -- * such platforms.
  --  

  --*
  -- * @def DBUS_INT64_CONSTANT
  -- *
  -- * Declare a 64-bit signed integer constant. The macro
  -- * adds the necessary "LL" or whatever after the integer,
  -- * giving a literal such as "325145246765LL"
  --  

  --*
  -- * @def DBUS_UINT64_CONSTANT
  -- *
  -- * Declare a 64-bit unsigned integer constant. The macro
  -- * adds the necessary "ULL" or whatever after the integer,
  -- * giving a literal such as "325145246765ULL"
  --  

  --*
  -- * An 8-byte struct you could use to access int64 without having
  -- * int64 support. Use #dbus_int64_t or #dbus_uint64_t instead.
  --  

  --*< first 32 bits in the 8 bytes (beware endian issues)  
   --  skipped anonymous struct anon_1

   type DBus8ByteStruct is record
      first32 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:123
      second32 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:125

  --*< second 32 bits in the 8 bytes (beware endian issues)  
  --*
  -- * A simple value union that lets you access bytes as if they
  -- * were various types; useful when dealing with basic types via
  -- * void pointers and varargs.
  -- *
  -- * This union also contains a pointer member (which can be used
  -- * to retrieve a string from dbus_message_iter_get_basic(), for
  -- * instance), so on future platforms it could conceivably be larger
  -- * than 8 bytes.
  --  

  --*< as 8 individual bytes  
   --  skipped anonymous struct anon_2

   type DBusBasicValue_array840 is array (0 .. 7) of aliased unsigned_char;
   type DBusBasicValue (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            bytes : aliased DBusBasicValue_array840;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:139
         when 1 =>
            i16 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int16_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:140
         when 2 =>
            u16 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint16_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:141
         when 3 =>
            i32 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:142
         when 4 =>
            u32 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:143
         when 5 =>
            bool_val : aliased dbus_bool_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:144
         when 6 =>
            i64 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int64_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:145
         when 7 =>
            u64 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint64_t;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:146
         when 8 =>
            eight : aliased DBus8ByteStruct;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:147
         when 9 =>
            dbl : aliased double;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:148
         when 10 =>
            byt : aliased unsigned_char;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:149
         when 11 =>
            str : Interfaces.C.Strings.chars_ptr;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:150
         when others =>
            fd : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:151
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/dbus-1.0/dbus/dbus-types.h:152

  --*< as int16  
  --*< as int16  
  --*< as int32  
  --*< as int32  
  --*< as boolean  
  --*< as int64  
  --*< as int64  
  --*< as 8-byte struct  
  --*< as double  
  --*< as byte  
  --*< as char* (string, object path or signature)  
  --*< as Unix file descriptor  
  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
