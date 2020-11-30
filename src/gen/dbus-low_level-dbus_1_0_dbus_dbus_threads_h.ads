pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h;

package Dbus.Low_Level.dbus_1_0_dbus_dbus_threads_h is

  -- -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*-  
  -- dbus-threads.h  D-Bus threads handling
  -- *
  -- * Copyright (C) 2002  Red Hat Inc.
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
  -- * @addtogroup DBusThreads
  -- * @{
  --  

  --* An opaque mutex type provided by the #DBusThreadFunctions implementation installed by dbus_threads_init().  
   type DBusMutex is null record;   -- incomplete struct

  --* An opaque condition variable type provided by the #DBusThreadFunctions implementation installed by dbus_threads_init().  
   type DBusCondVar is null record;   -- incomplete struct

  --* Deprecated, provide DBusRecursiveMutexNewFunction instead.  
   type DBusMutexNewFunction is access function return access DBusMutex
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:46

  --* Deprecated, provide DBusRecursiveMutexFreeFunction instead.  
   type DBusMutexFreeFunction is access procedure (arg1 : access DBusMutex)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:48

  --* Deprecated, provide DBusRecursiveMutexLockFunction instead. Return value is lock success, but gets ignored in practice.  
   type DBusMutexLockFunction is access function (arg1 : access DBusMutex) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:50

  --* Deprecated, provide DBusRecursiveMutexUnlockFunction instead. Return value is unlock success, but gets ignored in practice.  
   type DBusMutexUnlockFunction is access function (arg1 : access DBusMutex) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:52

  --* Creates a new recursively-lockable mutex, or returns #NULL if not
  -- * enough memory.  Can only fail due to lack of memory.  Found in
  -- * #DBusThreadFunctions. Do not just use PTHREAD_MUTEX_RECURSIVE for
  -- * this, because it does not save/restore the recursion count when
  -- * waiting on a condition. libdbus requires the Java-style behavior
  -- * where the mutex is fully unlocked to wait on a condition.
  --  

   type DBusRecursiveMutexNewFunction is access function return access DBusMutex
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:61

  --* Frees a recursively-lockable mutex.  Found in #DBusThreadFunctions.
  --  

   type DBusRecursiveMutexFreeFunction is access procedure (arg1 : access DBusMutex)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:64

  --* Locks a recursively-lockable mutex.  Found in #DBusThreadFunctions.
  -- * Can only fail due to lack of memory.
  --  

   type DBusRecursiveMutexLockFunction is access procedure (arg1 : access DBusMutex)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:68

  --* Unlocks a recursively-lockable mutex.  Found in #DBusThreadFunctions.
  -- * Can only fail due to lack of memory.
  --  

   type DBusRecursiveMutexUnlockFunction is access procedure (arg1 : access DBusMutex)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:72

  --* Creates a new condition variable.  Found in #DBusThreadFunctions.
  -- * Can only fail (returning #NULL) due to lack of memory.
  --  

   type DBusCondVarNewFunction is access function return access DBusCondVar
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:77

  --* Frees a condition variable.  Found in #DBusThreadFunctions.
  --  

   type DBusCondVarFreeFunction is access procedure (arg1 : access DBusCondVar)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:80

  --* Waits on a condition variable.  Found in
  -- * #DBusThreadFunctions. Must work with either a recursive or
  -- * nonrecursive mutex, whichever the thread implementation
  -- * provides. Note that PTHREAD_MUTEX_RECURSIVE does not work with
  -- * condition variables (does not save/restore the recursion count) so
  -- * don't try using simply pthread_cond_wait() and a
  -- * PTHREAD_MUTEX_RECURSIVE to implement this, it won't work right.
  -- *
  -- * Has no error conditions. Must succeed if it returns.
  --  

   type DBusCondVarWaitFunction is access procedure (arg1 : access DBusCondVar; arg2 : access DBusMutex)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:92

  --* Waits on a condition variable with a timeout.  Found in
  -- *  #DBusThreadFunctions. Returns #TRUE if the wait did not
  -- *  time out, and #FALSE if it did.
  -- *
  -- * Has no error conditions. Must succeed if it returns. 
  --  

   type DBusCondVarWaitTimeoutFunction is access function
        (arg1 : access DBusCondVar;
         arg2 : access DBusMutex;
         arg3 : int) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:101

  --* Wakes one waiting thread on a condition variable.  Found in #DBusThreadFunctions.
  -- *
  -- * Has no error conditions. Must succeed if it returns.
  --  

   type DBusCondVarWakeOneFunction is access procedure (arg1 : access DBusCondVar)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:108

  --* Wakes all waiting threads on a condition variable.  Found in #DBusThreadFunctions.
  -- *
  -- * Has no error conditions. Must succeed if it returns.
  --  

   type DBusCondVarWakeAllFunction is access procedure (arg1 : access DBusCondVar)
   with Convention => C;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:114

  --*
  -- * Flags indicating which functions are present in #DBusThreadFunctions. Used to allow
  -- * the library to detect older callers of dbus_threads_init() if new possible functions
  -- * are added to #DBusThreadFunctions.
  --  

   subtype DBusThreadFunctionsMask is unsigned;
   DBUS_THREAD_FUNCTIONS_MUTEX_NEW_MASK : constant unsigned := 1;
   DBUS_THREAD_FUNCTIONS_MUTEX_FREE_MASK : constant unsigned := 2;
   DBUS_THREAD_FUNCTIONS_MUTEX_LOCK_MASK : constant unsigned := 4;
   DBUS_THREAD_FUNCTIONS_MUTEX_UNLOCK_MASK : constant unsigned := 8;
   DBUS_THREAD_FUNCTIONS_CONDVAR_NEW_MASK : constant unsigned := 16;
   DBUS_THREAD_FUNCTIONS_CONDVAR_FREE_MASK : constant unsigned := 32;
   DBUS_THREAD_FUNCTIONS_CONDVAR_WAIT_MASK : constant unsigned := 64;
   DBUS_THREAD_FUNCTIONS_CONDVAR_WAIT_TIMEOUT_MASK : constant unsigned := 128;
   DBUS_THREAD_FUNCTIONS_CONDVAR_WAKE_ONE_MASK : constant unsigned := 256;
   DBUS_THREAD_FUNCTIONS_CONDVAR_WAKE_ALL_MASK : constant unsigned := 512;
   DBUS_THREAD_FUNCTIONS_RECURSIVE_MUTEX_NEW_MASK : constant unsigned := 1024;
   DBUS_THREAD_FUNCTIONS_RECURSIVE_MUTEX_FREE_MASK : constant unsigned := 2048;
   DBUS_THREAD_FUNCTIONS_RECURSIVE_MUTEX_LOCK_MASK : constant unsigned := 4096;
   DBUS_THREAD_FUNCTIONS_RECURSIVE_MUTEX_UNLOCK_MASK : constant unsigned := 8192;
   DBUS_THREAD_FUNCTIONS_ALL_MASK : constant unsigned := 16383;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:138

  --*
  -- * Functions that must be implemented to make the D-Bus library
  -- * thread-aware.
  -- *
  -- * If you supply both recursive and non-recursive mutexes,
  -- * libdbus will use the non-recursive version for condition variables,
  -- * and the recursive version in other contexts.
  -- *
  -- * The condition variable functions have to work with nonrecursive
  -- * mutexes if you provide those, or with recursive mutexes if you
  -- * don't.
  --  

  --*< Mask indicating which functions are present.  
   --  skipped anonymous struct anon_9

   type DBusThreadFunctions is record
      mask : aliased unsigned;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:154
      mutex_new : DBusMutexNewFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:156
      mutex_free : DBusMutexFreeFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:157
      mutex_lock : DBusMutexLockFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:158
      mutex_unlock : DBusMutexUnlockFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:159
      condvar_new : DBusCondVarNewFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:161
      condvar_free : DBusCondVarFreeFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:162
      condvar_wait : DBusCondVarWaitFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:163
      condvar_wait_timeout : DBusCondVarWaitTimeoutFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:164
      condvar_wake_one : DBusCondVarWakeOneFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:165
      condvar_wake_all : DBusCondVarWakeAllFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:166
      recursive_mutex_new : DBusRecursiveMutexNewFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:168
      recursive_mutex_free : DBusRecursiveMutexFreeFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:169
      recursive_mutex_lock : DBusRecursiveMutexLockFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:170
      recursive_mutex_unlock : DBusRecursiveMutexUnlockFunction;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:171
      padding1 : access procedure;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:173
      padding2 : access procedure;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:174
      padding3 : access procedure;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:175
      padding4 : access procedure;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:176
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:178

  --*< Function to create a mutex; optional and deprecated.  
  --*< Function to free a mutex; optional and deprecated.  
  --*< Function to lock a mutex; optional and deprecated.  
  --*< Function to unlock a mutex; optional and deprecated.  
  --*< Function to create a condition variable  
  --*< Function to free a condition variable  
  --*< Function to wait on a condition  
  --*< Function to wait on a condition with a timeout  
  --*< Function to wake one thread waiting on the condition  
  --*< Function to wake all threads waiting on the condition  
  --*< Function to create a recursive mutex  
  --*< Function to free a recursive mutex  
  --*< Function to lock a recursive mutex  
  --*< Function to unlock a recursive mutex  
  --*< Reserved for future expansion  
  --*< Reserved for future expansion  
  --*< Reserved for future expansion  
  --*< Reserved for future expansion  
   function dbus_threads_init (functions : access constant DBusThreadFunctions) return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_threads_init";

   function dbus_threads_init_default return Dbus.Low_Level.dbus_1_0_dbus_dbus_types_h.dbus_bool_t  -- /usr/include/dbus-1.0/dbus/dbus-threads.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "dbus_threads_init_default";

  --* @}  
end Dbus.Low_Level.dbus_1_0_dbus_dbus_threads_h;
