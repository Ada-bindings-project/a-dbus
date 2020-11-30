pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Dbus.Low_Level.dbus_dbus_arch_deps_h;
with Interfaces.C.Strings;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_message_h is

   --  unsupported macro: DBUS_MESSAGE_ITER_INIT_CLOSED { NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL }
  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-message.h DBusMessage object
  -- *
  -- * Copyright (C) 2002, 2003, 2005 Red Hat Inc.
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
  -- * @addtogroup DBusMessage
  -- * @{
  --  

   type DBusMessage is null record;   -- incomplete struct

  --*
  -- * Opaque type representing a message iterator. Can be copied by value and
  -- * allocated on the stack.
  -- *
  -- * A DBusMessageIter usually contains no allocated memory. However, there
  -- * is one special case: after a successful call to
  -- * dbus_message_iter_open_container(), the caller is responsible for calling
  -- * either dbus_message_iter_close_container() or
  -- * dbus_message_iter_abandon_container() exactly once, with the same pair
  -- * of iterators.
  --  

   type DBusMessageIter;
  --*
  -- * DBusMessageIter struct; contains no public fields. 
  --  

  --*< Don't use this  
   type DBusMessageIter is record
      dummy1 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:63
      dummy2 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:64
      dummy3 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:65
      dummy4 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:66
      dummy5 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:67
      dummy6 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:68
      dummy7 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:69
      dummy8 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:70
      dummy9 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:71
      dummy10 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:72
      dummy11 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:73
      pad1 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:74
      pad2 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:75
      pad3 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/dbus-1.0/dbus/dbus-message.h:61

  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*
  -- * A message iterator for which dbus_message_iter_abandon_container_if_open()
  -- * is the only valid operation.
  --  

   function dbus_message_new (message_type : int) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_new";

   function dbus_message_new_method_call
     (bus_name : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      iface : Interfaces.C.Strings.chars_ptr;
      method : Interfaces.C.Strings.chars_ptr) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_new_method_call";

   function dbus_message_new_method_return (method_call : access DBusMessage) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_new_method_return";

   function dbus_message_new_signal
     (path : Interfaces.C.Strings.chars_ptr;
      iface : Interfaces.C.Strings.chars_ptr;
      name : Interfaces.C.Strings.chars_ptr) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_new_signal";

   function dbus_message_new_error
     (reply_to : access DBusMessage;
      error_name : Interfaces.C.Strings.chars_ptr;
      error_message : Interfaces.C.Strings.chars_ptr) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_new_error";

   function dbus_message_new_error_printf
     (reply_to : access DBusMessage;
      error_name : Interfaces.C.Strings.chars_ptr;
      error_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_new_error_printf";

   function dbus_message_copy (message : access constant DBusMessage) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_copy";

   function dbus_message_ref (message : access DBusMessage) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_ref";

   procedure dbus_message_unref (message : access DBusMessage)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_unref";

   function dbus_message_get_type (message : access DBusMessage) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_type";

   function dbus_message_set_path (message : access DBusMessage; object_path : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_path";

   function dbus_message_get_path (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_path";

   function dbus_message_has_path (message : access DBusMessage; object_path : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_has_path";

   function dbus_message_set_interface (message : access DBusMessage; iface : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_interface";

   function dbus_message_get_interface (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_interface";

   function dbus_message_has_interface (message : access DBusMessage; iface : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_has_interface";

   function dbus_message_set_member (message : access DBusMessage; member : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_member";

   function dbus_message_get_member (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_member";

   function dbus_message_has_member (message : access DBusMessage; member : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_has_member";

   function dbus_message_set_error_name (message : access DBusMessage; name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_error_name";

   function dbus_message_get_error_name (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_error_name";

   function dbus_message_set_destination (message : access DBusMessage; destination : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_destination";

   function dbus_message_get_destination (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_destination";

   function dbus_message_set_sender (message : access DBusMessage; sender : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_sender";

   function dbus_message_get_sender (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_sender";

   function dbus_message_get_signature (message : access DBusMessage) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_signature";

   procedure dbus_message_set_no_reply (message : access DBusMessage; no_reply : Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_no_reply";

   function dbus_message_get_no_reply (message : access DBusMessage) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_no_reply";

   function dbus_message_is_method_call
     (message : access DBusMessage;
      iface : Interfaces.C.Strings.chars_ptr;
      method : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_is_method_call";

   function dbus_message_is_signal
     (message : access DBusMessage;
      iface : Interfaces.C.Strings.chars_ptr;
      signal_name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_is_signal";

   function dbus_message_is_error (message : access DBusMessage; error_name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_is_error";

   function dbus_message_has_destination (message : access DBusMessage; bus_name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_has_destination";

   function dbus_message_has_sender (message : access DBusMessage; unique_bus_name : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_has_sender";

   function dbus_message_has_signature (message : access DBusMessage; signature : Interfaces.C.Strings.chars_ptr) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_has_signature";

   function dbus_message_get_serial (message : access DBusMessage) return Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_serial";

   procedure dbus_message_set_serial (message : access DBusMessage; serial : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_serial";

   function dbus_message_set_reply_serial (message : access DBusMessage; reply_serial : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_reply_serial";

   function dbus_message_get_reply_serial (message : access DBusMessage) return Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_reply_serial";

   procedure dbus_message_set_auto_start (message : access DBusMessage; auto_start : Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_auto_start";

   function dbus_message_get_auto_start (message : access DBusMessage) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_auto_start";

   function dbus_message_get_path_decomposed (message : access DBusMessage; path : System.Address) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_path_decomposed";

   function dbus_message_append_args (message : access DBusMessage; first_arg_type : int  -- , ...
      ) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_append_args";

   function dbus_message_append_args_valist
     (message : access DBusMessage;
      first_arg_type : int;
      var_args : access System.Address) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_append_args_valist";

   function dbus_message_get_args
     (message : access DBusMessage;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError;
      first_arg_type : int  -- , ...
      ) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_args";

   function dbus_message_get_args_valist
     (message : access DBusMessage;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError;
      first_arg_type : int;
      var_args : access System.Address) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_args_valist";

   function dbus_message_contains_unix_fds (message : access DBusMessage) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_contains_unix_fds";

   procedure dbus_message_iter_init_closed (iter : access DBusMessageIter)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_init_closed";

   function dbus_message_iter_init (message : access DBusMessage; iter : access DBusMessageIter) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_init";

   function dbus_message_iter_has_next (iter : access DBusMessageIter) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_has_next";

   function dbus_message_iter_next (iter : access DBusMessageIter) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_next";

   function dbus_message_iter_get_signature (iter : access DBusMessageIter) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_signature";

   function dbus_message_iter_get_arg_type (iter : access DBusMessageIter) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_arg_type";

   function dbus_message_iter_get_element_type (iter : access DBusMessageIter) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_element_type";

   procedure dbus_message_iter_recurse (iter : access DBusMessageIter; sub : access DBusMessageIter)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_recurse";

   procedure dbus_message_iter_get_basic (iter : access DBusMessageIter; value : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_basic";

   function dbus_message_iter_get_element_count (iter : access DBusMessageIter) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_element_count";

  -- This function returns the wire protocol size of the array in bytes,
  -- * you do not want to know that probably
  --  

   function dbus_message_iter_get_array_len (iter : access DBusMessageIter) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_array_len";

   procedure dbus_message_iter_get_fixed_array
     (iter : access DBusMessageIter;
      value : System.Address;
      n_elements : access int)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_get_fixed_array";

   procedure dbus_message_iter_init_append (message : access DBusMessage; iter : access DBusMessageIter)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_init_append";

   function dbus_message_iter_append_basic
     (iter : access DBusMessageIter;
      c_type : int;
      value : System.Address) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_append_basic";

   function dbus_message_iter_append_fixed_array
     (iter : access DBusMessageIter;
      element_type : int;
      value : System.Address;
      n_elements : int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_append_fixed_array";

   function dbus_message_iter_open_container
     (iter : access DBusMessageIter;
      c_type : int;
      contained_signature : Interfaces.C.Strings.chars_ptr;
      sub : access DBusMessageIter) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_open_container";

   function dbus_message_iter_close_container (iter : access DBusMessageIter; sub : access DBusMessageIter) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_close_container";

   procedure dbus_message_iter_abandon_container (iter : access DBusMessageIter; sub : access DBusMessageIter)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_abandon_container";

   procedure dbus_message_iter_abandon_container_if_open (iter : access DBusMessageIter; sub : access DBusMessageIter)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_iter_abandon_container_if_open";

   procedure dbus_message_lock (message : access DBusMessage)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_lock";

   function dbus_set_error_from_message (error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError; message : access DBusMessage) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_set_error_from_message";

   function dbus_message_allocate_data_slot (slot_p : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_allocate_data_slot";

   procedure dbus_message_free_data_slot (slot_p : access Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_free_data_slot";

   function dbus_message_set_data
     (message : access DBusMessage;
      slot : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t;
      data : System.Address;
      free_data_func : Dbus.Low_Level.dbus_1_0_dbus_dbus_memory_h.DBusFreeFunction) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_data";

   function dbus_message_get_data (message : access DBusMessage; slot : Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_int32_t) return System.Address  -- /usr/include/dbus-1.0/dbus/dbus-message.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_data";

   function dbus_message_type_from_string (type_str : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_type_from_string";

   function dbus_message_type_to_string (c_type : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-message.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_type_to_string";

   function dbus_message_marshal
     (msg : access DBusMessage;
      marshalled_data_p : System.Address;
      len_p : access int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_marshal";

   function dbus_message_demarshal
     (str : Interfaces.C.Strings.chars_ptr;
      len : int;
      error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return access DBusMessage  -- /usr/include/dbus-1.0/dbus/dbus-message.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_demarshal";

   function dbus_message_demarshal_bytes_needed (str : Interfaces.C.Strings.chars_ptr; len : int) return int  -- /usr/include/dbus-1.0/dbus/dbus-message.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_demarshal_bytes_needed";

   procedure dbus_message_set_allow_interactive_authorization (message : access DBusMessage; allow : Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_set_allow_interactive_authorization";

   function dbus_message_get_allow_interactive_authorization (message : access DBusMessage) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-message.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_message_get_allow_interactive_authorization";

  --*
  -- * Clear a variable or struct member that contains a #DBusMessage.
  -- * If it does not contain #NULL, the message that was previously
  -- * there is unreferenced with dbus_message_unref().
  -- *
  -- * This is very similar to dbus_clear_connection(): see that function
  -- * for more details.
  -- *
  -- * @param pointer_to_message A pointer to a variable or struct member.
  -- * pointer_to_message must not be #NULL, but *pointer_to_message
  -- * may be #NULL.
  --  

   procedure dbus_clear_message (pointer_to_message : System.Address)  -- /usr/include/dbus-1.0/dbus/dbus-message.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_clear_message";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_message_h;
