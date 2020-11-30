pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_address_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-address.h  Server address parser.
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
  -- * @addtogroup DBusAddress
  -- * @{
  --  

  --* Opaque type representing one of the semicolon-separated items in an address  
   type DBusAddressEntry is null record;   -- incomplete struct

   function dbus_parse_address
     (address : Interfaces.C.Strings.chars_ptr;
      entry_result : System.Address;
      array_len : access int;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-address.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_parse_address";

   function dbus_address_entry_get_value (c_entry : access DBusAddressEntry; key : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-address.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_address_entry_get_value";

   function dbus_address_entry_get_method (c_entry : access DBusAddressEntry) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-address.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_address_entry_get_method";

   procedure dbus_address_entries_free (entries : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-address.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_address_entries_free";

   function dbus_address_escape_value (value : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-address.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_address_escape_value";

   function dbus_address_unescape_value (value : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-address.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_address_unescape_value";

  --*
  -- * Clear a variable or struct member that contains an array of #DBusAddressEntry.
  -- * If it does not contain #NULL, the entries that were previously
  -- * there are freed with dbus_address_entries_free().
  -- *
  -- * This is similar to dbus_clear_connection(): see that function
  -- * for more details.
  -- *
  -- * @param pointer_to_entries A pointer to a variable or struct member.
  -- * pointer_to_entries must not be #NULL, but *pointer_to_entries
  -- * may be #NULL.
  --  

   procedure dbus_clear_address_entries (pointer_to_entries : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-address.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_clear_address_entries";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_address_h;
