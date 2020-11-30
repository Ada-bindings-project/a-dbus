pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h;
with System;
with Interfaces.C.Strings;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h;
with Dbus.Low_Level.dbus_dbus_arch_deps_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_server_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-server.h DBusServer object
  -- *
  -- * Copyright (C) 2002, 2003  Red Hat Inc.
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
  -- * @addtogroup DBusServer
  -- * @{
  --  

   type DBusServer is null record;   -- incomplete struct

  --* Called when a new connection to the server is available. Must reference and save the new
  -- * connection, or close the new connection. Set with dbus_server_set_new_connection_function().
  --  

   type DBusNewConnectionFunction is access procedure
        (arg1 : access DBusServer;
         arg2 : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusConnection;
         arg3 : System.Address)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-server.h:48

   function dbus_server_listen (address : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return access DBusServer  -- /usr/include/dbus-1.0/dbus/dbus-server.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_listen";

   function dbus_server_ref (server : access DBusServer) return access DBusServer  -- /usr/include/dbus-1.0/dbus/dbus-server.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_ref";

   procedure dbus_server_unref (server : access DBusServer)  -- /usr/include/dbus-1.0/dbus/dbus-server.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_unref";

   procedure dbus_server_disconnect (server : access DBusServer)  -- /usr/include/dbus-1.0/dbus/dbus-server.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_disconnect";

   function dbus_server_get_is_connected (server : access DBusServer) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-server.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_get_is_connected";

   function dbus_server_get_address (server : access DBusServer) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-server.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_get_address";

   function dbus_server_get_id (server : access DBusServer) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-server.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_get_id";

   procedure dbus_server_set_new_connection_function
     (server : access DBusServer;
      c_function : DBusNewConnectionFunction;
      data : System.Address;
      free_data_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction)  -- /usr/include/dbus-1.0/dbus/dbus-server.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_set_new_connection_function";

   function dbus_server_set_watch_functions
     (server : access DBusServer;
      add_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusAddWatchFunction;
      remove_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusRemoveWatchFunction;
      toggled_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusWatchToggledFunction;
      data : System.Address;
      free_data_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-server.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_set_watch_functions";

   function dbus_server_set_timeout_functions
     (server : access DBusServer;
      add_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusAddTimeoutFunction;
      remove_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusRemoveTimeoutFunction;
      toggled_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusTimeoutToggledFunction;
      data : System.Address;
      free_data_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-server.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_set_timeout_functions";

   function dbus_server_set_auth_mechanisms (server : access DBusServer; mechanisms : System.Address) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-server.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_set_auth_mechanisms";

   function dbus_server_allocate_data_slot (slot_p : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-server.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_allocate_data_slot";

   procedure dbus_server_free_data_slot (slot_p : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t)  -- /usr/include/dbus-1.0/dbus/dbus-server.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_free_data_slot";

   function dbus_server_set_data
     (server : access DBusServer;
      slot : int;
      data : System.Address;
      free_data_func : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-server.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_set_data";

   function dbus_server_get_data (server : access DBusServer; slot : int) return System.Address  -- /usr/include/dbus-1.0/dbus/dbus-server.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_server_get_data";

  --*
  -- * Clear a variable or struct member that contains a #DBusServer.
  -- * If it does not contain #NULL, the server that was previously
  -- * there is unreferenced with dbus_server_unref().
  -- *
  -- * This is very similar to dbus_clear_connection(): see that function
  -- * for more details.
  -- *
  -- * @param pointer_to_server A pointer to a variable or struct member.
  -- * pointer_to_server must not be #NULL, but *pointer_to_server
  -- * may be #NULL.
  --  

   procedure dbus_clear_server (pointer_to_server : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-server.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_clear_server";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_server_h;
