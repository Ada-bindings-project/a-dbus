pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package Dbus.Low_Level.dbus_dbus_arch_deps_h is

   DBUS_HAVE_INT64 : constant := 1;  --  /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:35
   --  unsupported macro: DBUS_INT64_CONSTANT(val) (_DBUS_GNUC_EXTENSION (val ##L))
   --  unsupported macro: DBUS_UINT64_CONSTANT(val) (_DBUS_GNUC_EXTENSION (val ##UL))

   DBUS_MAJOR_VERSION : constant := 1;  --  /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:51
   DBUS_MINOR_VERSION : constant := 12;  --  /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:52
   DBUS_MICRO_VERSION : constant := 20;  --  /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:53

   DBUS_VERSION_STRING : aliased constant String := "1.12.20" & ASCII.NUL;  --  /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:55
   --  unsupported macro: DBUS_VERSION ((1 << 16) | (12 << 8) | (20))

  -- -*- mode: C; c-file-style: "gnu" -*-  
  -- dbus-arch-deps.h Header with architecture/compiler specific information, installed to libdir
  -- *
  -- * Copyright (C) 2003 Red Hat, Inc.
  -- *
  -- * Licensed under the Academic Free License version 2.0
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

  -- D-Bus no longer supports platforms with no 64-bit integer type.  
   subtype dbus_int64_t is long;  -- /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:36

   subtype dbus_uint64_t is unsigned_long;  -- /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:37

   subtype dbus_int32_t is int;  -- /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:42

   subtype dbus_uint32_t is unsigned;  -- /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:43

   subtype dbus_int16_t is short;  -- /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:45

   subtype dbus_uint16_t is unsigned_short;  -- /usr/lib/x86_64-linux-gnu/dbus-1.0/include/dbus/dbus-arch-deps.h:46

  -- This is not really arch-dependent, but it's not worth
  -- * creating an additional generated header just for this
  --  

end Dbus.Low_Level.dbus_dbus_arch_deps_h;
