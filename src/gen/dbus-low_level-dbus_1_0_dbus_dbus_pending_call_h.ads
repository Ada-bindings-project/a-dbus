pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h;
with System;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_message_h;
with Dbus.Low_Level.dbus_dbus_arch_deps_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_pending_call_h is

   --  unsupported macro: DBUS_TIMEOUT_INFINITE ((int) 0x7fffffff)
   DBUS_TIMEOUT_USE_DEFAULT : constant := (-1);  --  /usr/include/dbus-1.0/dbus/dbus-pending-call.h:42

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-pending-call.h Object representing a call in progress.
  -- *
  -- * Copyright (C) 2002, 2003 Red Hat Inc.
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
  -- * @addtogroup DBusPendingCall
  -- * @{
  --  

   function dbus_pending_call_ref (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall) return access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_ref";

   procedure dbus_pending_call_unref (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall)  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_unref";

   function dbus_pending_call_set_notify
     (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall;
      c_function : Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCallNotifyFunction;
      user_data : System.Address;
      free_user_data : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_set_notify";

   procedure dbus_pending_call_cancel (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall)  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_cancel";

   function dbus_pending_call_get_completed (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_get_completed";

   function dbus_pending_call_steal_reply (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall) return access Dbus.Low_Level.dbus_1_0_dbus_dbus_message_h.DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_steal_reply";

   procedure dbus_pending_call_block (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall)  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_block";

   function dbus_pending_call_allocate_data_slot (slot_p : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_allocate_data_slot";

   procedure dbus_pending_call_free_data_slot (slot_p : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t)  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_free_data_slot";

   function dbus_pending_call_set_data
     (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall;
      slot : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t;
      data : System.Address;
      free_data_func : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_set_data";

   function dbus_pending_call_get_data (pending : access Dbus.Low_Level.dbus_1_0_dbus_dbus_connection_h.DBusPendingCall; slot : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t) return System.Address  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_pending_call_get_data";

  --*
  -- * Clear a variable or struct member that contains a #DBusPendingCall.
  -- * If it does not contain #NULL, the pending call that was previously
  -- * there is unreferenced with dbus_pending_call_unref().
  -- *
  -- * This is very similar to dbus_clear_connection(): see that function
  -- * for more details.
  -- *
  -- * @param pointer_to_pending_call A pointer to a variable or struct member.
  -- * pointer_to_pending_call must not be #NULL, but *pointer_to_pending_call
  -- * may be #NULL.
  --  

   procedure dbus_clear_pending_call (pointer_to_pending_call : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-pending-call.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_clear_pending_call";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_pending_call_h;
