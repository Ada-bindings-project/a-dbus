pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_shared_h;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
with Interfaces.C.Strings;
with Dbus.Low_Level.dbus_dbus_arch_deps_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_bus_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-bus.h  Convenience functions for communicating with the bus.
  -- *
  -- * Copyright (C) 2003  CodeFactory AB
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
  -- * @addtogroup DBusBus
  -- * @{
  --  

   function dbus_bus_get (c_type : Dbus.Low_Level.dbus_1_0_dbus_dbus_shared_h.DBusBusType; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_get";

   function dbus_bus_get_private (c_type : Dbus.Low_Level.dbus_1_0_dbus_dbus_shared_h.DBusBusType; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_get_private";

   function dbus_bus_register (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_register";

   function dbus_bus_set_unique_name (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection; unique_name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_set_unique_name";

   function dbus_bus_get_unique_name (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_get_unique_name";

   function dbus_bus_get_unix_user
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      name : Interfaces.C.Strings.chars_ptr;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return unsigned_long  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_get_unix_user";

   function dbus_bus_get_id (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_get_id";

   function dbus_bus_request_name
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      name : Interfaces.C.Strings.chars_ptr;
      flags : unsigned;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return int  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_request_name";

   function dbus_bus_release_name
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      name : Interfaces.C.Strings.chars_ptr;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return int  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_release_name";

   function dbus_bus_name_has_owner
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      name : Interfaces.C.Strings.chars_ptr;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_name_has_owner";

   function dbus_bus_start_service_by_name
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      name : Interfaces.C.Strings.chars_ptr;
      flags : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;
      reply : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_start_service_by_name";

   procedure dbus_bus_add_match
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      rule : Interfaces.C.Strings.chars_ptr;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError)  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_add_match";

   procedure dbus_bus_remove_match
     (connection : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
      rule : Interfaces.C.Strings.chars_ptr;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError)  -- /usr/include/dbus-1.0/dbus/dbus-bus.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_bus_remove_match";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_bus_h;
