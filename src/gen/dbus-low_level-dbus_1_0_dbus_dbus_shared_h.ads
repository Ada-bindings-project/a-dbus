pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_shared_h is

   DBUS_SERVICE_DBUS : aliased constant String := "org.freedesktop.DBus" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:76

   DBUS_PATH_DBUS : aliased constant String := "/org/freedesktop/DBus" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:80

   DBUS_PATH_LOCAL : aliased constant String := "/org/freedesktop/DBus/Local" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:82

   DBUS_INTERFACE_DBUS : aliased constant String := "org.freedesktop.DBus" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:88

   DBUS_INTERFACE_MONITORING : aliased constant String := "org.freedesktop.DBus.Monitoring" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:90

   DBUS_INTERFACE_VERBOSE : aliased constant String := "org.freedesktop.DBus.Verbose" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:93

   DBUS_INTERFACE_INTROSPECTABLE : aliased constant String := "org.freedesktop.DBus.Introspectable" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:95

   DBUS_INTERFACE_PROPERTIES : aliased constant String := "org.freedesktop.DBus.Properties" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:97

   DBUS_INTERFACE_PEER : aliased constant String := "org.freedesktop.DBus.Peer" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:99

   DBUS_INTERFACE_LOCAL : aliased constant String := "org.freedesktop.DBus.Local" & ASCII.NUL;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:105

   DBUS_NAME_FLAG_ALLOW_REPLACEMENT : constant := 16#1#;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:108
   DBUS_NAME_FLAG_REPLACE_EXISTING : constant := 16#2#;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:109
   DBUS_NAME_FLAG_DO_NOT_QUEUE : constant := 16#4#;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:110

   DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER : constant := 1;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:113
   DBUS_REQUEST_NAME_REPLY_IN_QUEUE : constant := 2;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:114
   DBUS_REQUEST_NAME_REPLY_EXISTS : constant := 3;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:115
   DBUS_REQUEST_NAME_REPLY_ALREADY_OWNER : constant := 4;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:116

   DBUS_RELEASE_NAME_REPLY_RELEASED : constant := 1;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:119
   DBUS_RELEASE_NAME_REPLY_NON_EXISTENT : constant := 2;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:120
   DBUS_RELEASE_NAME_REPLY_NOT_OWNER : constant := 3;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:121

   DBUS_START_REPLY_SUCCESS : constant := 1;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:124
   DBUS_START_REPLY_ALREADY_RUNNING : constant := 2;  --  /usr/include/dbus-1.0/dbus/dbus-shared.h:125

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-shared.h  Stuff used by both dbus/dbus.h low-level and C/C++ binding APIs
  -- *
  -- * Copyright (C) 2004 Red Hat, Inc.
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

  -- Don't include anything in here from anywhere else. It's
  -- * intended for use by any random library.
  --  

  -- avoids confusing emacs indentation  
  -- Normally docs are in .c files, but there isn't a .c file for this.  
  --*
  -- * @defgroup DBusShared Shared constants 
  -- * @ingroup  DBus
  -- *
  -- * @brief Shared header included by both libdbus and C/C++ bindings such as the GLib bindings.
  -- *
  -- * Usually a C/C++ binding such as the GLib or Qt binding won't want to include dbus.h in its
  -- * public headers. However, a few constants and macros may be useful to include; those are
  -- * found here and in dbus-protocol.h
  -- *
  -- * @{
  --  

  --*
  -- * Well-known bus types. See dbus_bus_get().
  --  

  --*< The login session bus  
  --*< The systemwide bus  
  --*< The bus that started us, if any  
   type DBusBusType is 
     (DBUS_BUS_SESSION,
      DBUS_BUS_SYSTEM,
      DBUS_BUS_STARTER)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-shared.h:61

  --*
  -- * Results that a message handler can return.
  --  

  --*< Message has had its effect - no need to run more handlers.  
  --*< Message has not had any effect - see if other handlers want it.  
  --*< Need more memory in order to return #DBUS_HANDLER_RESULT_HANDLED or #DBUS_HANDLER_RESULT_NOT_YET_HANDLED. Please try again later with more memory.  
   type DBusHandlerResult is 
     (DBUS_HANDLER_RESULT_HANDLED,
      DBUS_HANDLER_RESULT_NOT_YET_HANDLED,
      DBUS_HANDLER_RESULT_NEED_MEMORY)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-shared.h:71

  -- Bus names  
  --* The bus name used to talk to the bus itself.  
  -- Paths  
  --* The object path used to talk to the bus itself.  
  --* The object path used in local/in-process-generated messages.  
  -- Interfaces, these #define don't do much other than
  -- * catch typos at compile time
  --  

  --* The interface exported by the object with #DBUS_SERVICE_DBUS and #DBUS_PATH_DBUS  
  --* The monitoring interface exported by the dbus-daemon  
  --* The verbose interface exported by the dbus-daemon  
  --* The interface supported by introspectable objects  
  --* The interface supported by objects with properties  
  --* The interface supported by most dbus peers  
  --* This is a special interface whose methods can only be invoked
  -- * by the local implementation (messages from remote apps aren't
  -- * allowed to specify this interface).
  --  

  -- Owner flags  
  -- Replies to request for a name  
  -- Replies to releasing a name  
  -- Replies to service starts  
  --* @}  
  -- avoids confusing emacs indentation  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_shared_h;
