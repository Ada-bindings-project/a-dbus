pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with System;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h is

   --  unsupported macro: DBUS_ERROR_INIT { NULL, NULL, TRUE, 0, 0, 0, 0, NULL }
  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-errors.h Error reporting
  -- *
  -- * Copyright (C) 2002  Red Hat Inc.
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
  -- * @addtogroup DBusErrors
  -- * @{
  --  

  --* Mostly-opaque type representing an error that occurred  
   type DBusError;
  --*
  -- * Object representing an exception.
  --  

  --*< public error name field  
   type DBusError is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:50
      message : Interfaces.C.Strings.chars_ptr;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:51
      dummy1 : Extensions.Unsigned_1;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:53
      dummy2 : Extensions.Unsigned_1;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:54
      dummy3 : Extensions.Unsigned_1;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:55
      dummy4 : Extensions.Unsigned_1;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:56
      dummy5 : Extensions.Unsigned_1;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:57
      padding1 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:59
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True;  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:48

  --*< public error message field  
  --*< placeholder  
  --*< placeholder  
  --*< placeholder  
  --*< placeholder  
  --*< placeholder  
  --*< placeholder  
   procedure dbus_error_init (error : access DBusError)  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_error_init";

   procedure dbus_error_free (error : access DBusError)  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_error_free";

   procedure dbus_set_error
     (error : access DBusError;
      name : Interfaces.C.Strings.chars_ptr;
      message : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_set_error";

   procedure dbus_set_error_const
     (error : access DBusError;
      name : Interfaces.C.Strings.chars_ptr;
      message : Interfaces.C.Strings.chars_ptr)  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_set_error_const";

   procedure dbus_move_error (src : access DBusError; dest : access DBusError)  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_move_error";

   function dbus_error_has_name (error : access constant DBusError; name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_error_has_name";

   function dbus_error_is_set (error : access constant DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-errors.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_error_is_set";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;
