pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_misc_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-misc.h  A few assorted public functions that don't fit elsewhere
  -- *
  -- * Copyright (C) 2006 Red Hat, Inc.
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
  -- * @addtogroup DBusMisc
  -- * @{
  --  

   function dbus_get_local_machine_id return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-misc.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_get_local_machine_id";

   procedure dbus_get_version
     (major_version_p : access int;
      minor_version_p : access int;
      micro_version_p : access int)  -- /usr/include/dbus-1.0/dbus/dbus-misc.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_get_version";

   function dbus_setenv (variable : Interfaces.C.Strings.chars_ptr; value : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-misc.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_setenv";

   function dbus_try_get_local_machine_id (error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-misc.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_try_get_local_machine_id";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_misc_h;
