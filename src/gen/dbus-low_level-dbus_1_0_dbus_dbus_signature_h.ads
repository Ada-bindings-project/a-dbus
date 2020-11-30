pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Dbus.Low_Level.dbus_dbus_arch_deps_h;
with Interfaces.C.Strings;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;
limited with Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_signature_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-signatures.h utility functions for D-Bus types
  -- *
  -- * Copyright (C) 2005 Red Hat Inc.
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
  -- * @addtogroup DBusSignature
  -- * @{
  --  

  --*
  -- * DBusSignatureIter struct; contains no public fields 
  --  

  --*< Don't use this  
   --  skipped anonymous struct anon_7

   type DBusSignatureIter is record
      dummy1 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:46
      dummy2 : System.Address;  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:47
      dummy8 : aliased Dbus.Low_Level.dbus_dbus_arch_deps_h.dbus_uint32_t;  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:48
      dummy12 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:49
      dummy17 : aliased int;  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:51

  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
  --*< Don't use this  
   procedure dbus_signature_iter_init (iter : access DBusSignatureIter; signature : Interfaces.C.Strings.chars_ptr)  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_iter_init";

   function dbus_signature_iter_get_current_type (iter : access constant DBusSignatureIter) return int  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_iter_get_current_type";

   function dbus_signature_iter_get_signature (iter : access constant DBusSignatureIter) return Interfaces.C.Strings.chars_ptr  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_iter_get_signature";

   function dbus_signature_iter_get_element_type (iter : access constant DBusSignatureIter) return int  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_iter_get_element_type";

   function dbus_signature_iter_next (iter : access DBusSignatureIter) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_iter_next";

   procedure dbus_signature_iter_recurse (iter : access constant DBusSignatureIter; subiter : access DBusSignatureIter)  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_iter_recurse";

   function dbus_signature_validate (signature : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_validate";

   function dbus_signature_validate_single (signature : Interfaces.C.Strings.chars_ptr; error : access Dbus.Low_Level.dbus_1_0_dbus_dbus_errors_h.DBusError) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_signature_validate_single";

   function dbus_type_is_valid (typecode : int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_type_is_valid";

   function dbus_type_is_basic (typecode : int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_type_is_basic";

   function dbus_type_is_container (typecode : int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_type_is_container";

   function dbus_type_is_fixed (typecode : int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-signature.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_type_is_fixed";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_signature_h;
