pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_syntax_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-syntax.h - utility functions for strings with special syntax
  -- *
  -- * Author: Simon McVittie <simon.mcvittie@collabora.co.uk>
  -- * Copyright © 2011 Nokia Corporation
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

   function dbus_validate_path (path : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-syntax.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_validate_path";

   function dbus_validate_interface (name : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-syntax.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_validate_interface";

   function dbus_validate_member (name : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-syntax.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_validate_member";

   function dbus_validate_error_name (name : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-syntax.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_validate_error_name";

   function dbus_validate_bus_name (name : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-syntax.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_validate_bus_name";

   function dbus_validate_utf8 (alleged_utf8 : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-syntax.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_validate_utf8";

end Dbus.Low_Level.dbus_1_0_dbus_dbus_syntax_h;
