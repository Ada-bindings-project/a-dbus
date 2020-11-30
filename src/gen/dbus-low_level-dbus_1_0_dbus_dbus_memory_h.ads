pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h is

   --  arg-macro: function dbus_new (type, count)
   --    return (type*)dbus_malloc (sizeof (type) * (count));
   --  arg-macro: function dbus_new0 (type, count)
   --    return (type*)dbus_malloc0 (sizeof (type) * (count));
  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-memory.h  D-Bus memory handling
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

  --*
  -- * @addtogroup DBusMemory
  -- * @{
  --  

   function dbus_malloc (bytes : unsigned_long) return System.Address  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_malloc";

   function dbus_malloc0 (bytes : unsigned_long) return System.Address  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_malloc0";

   function dbus_realloc (memory : System.Address; bytes : unsigned_long) return System.Address  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_realloc";

   procedure dbus_free (memory : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_free";

   procedure dbus_free_string_array (str_array : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_free_string_array";

   type DBusFreeFunction is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:63

   procedure dbus_shutdown  -- /usr/include/dbus-1.0/dbus/dbus-memory.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_shutdown";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h;
