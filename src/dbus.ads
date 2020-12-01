--  https://www.freedesktop.org/wiki/Software/dbus/

package Dbus is

   SERVICE_DBUS : aliased constant String := "org.freedesktop.DBus" & ASCII.NUL;

   PATH_DBUS : aliased constant String := "/org/freedesktop/DBus" & ASCII.NUL;

   PATH_LOCAL : aliased constant String := "/org/freedesktop/DBus/Local" & ASCII.NUL;

   INTERFACE_DBUS : aliased constant String := "org.freedesktop.DBus" & ASCII.NUL;

   INTERFACE_MONITORING : aliased constant String := "org.freedesktop.DBus.Monitoring" & ASCII.NUL;

   INTERFACE_VERBOSE : aliased constant String := "org.freedesktop.DBus.Verbose" & ASCII.NUL;

   INTERFACE_INTROSPECTABLE : aliased constant String := "org.freedesktop.DBus.Introspectable" & ASCII.NUL;

   INTERFACE_PROPERTIES : aliased constant String := "org.freedesktop.DBus.Properties" & ASCII.NUL;

   INTERFACE_PEER : aliased constant String := "org.freedesktop.DBus.Peer" & ASCII.NUL;

   INTERFACE_LOCAL : aliased constant String := "org.freedesktop.DBus.Local" & ASCII.NUL;

   NAME_FLAG_ALLOW_REPLACEMENT : constant := 16#1#;
   NAME_FLAG_REPLACE_EXISTING : constant := 16#2#;
   NAME_FLAG_DO_NOT_QUEUE : constant := 16#4#;

   REQUEST_NAME_REPLY_PRIMARY_OWNER : constant := 1;
   REQUEST_NAME_REPLY_IN_QUEUE : constant := 2;
   REQUEST_NAME_REPLY_EXISTS : constant := 3;
   REQUEST_NAME_REPLY_ALREADY_OWNER : constant := 4;

   RELEASE_NAME_REPLY_RELEASED : constant := 1;
   RELEASE_NAME_REPLY_NON_EXISTENT : constant := 2;
   RELEASE_NAME_REPLY_NOT_OWNER : constant := 3;

   START_REPLY_SUCCESS : constant := 1;
   START_REPLY_ALREADY_RUNNING : constant := 2;

   type DBusBusType is
     (SESSION_Bus,
      SYSTEM_Bus,
      STARTER_Bus)
   with Convention => C;

   type DBusHandlerResult is
     (RESULT_HANDLED,
      RESULT_NOT_YET_HANDLED,
      RESULT_NEED_MEMORY)
   with Convention => C;

end Dbus;
