private  Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Connection_H;
package Dbus.Connections is
   type Connection is tagged private;


private
   type DBusConnection_Access is access all Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Connection_H.DBusConnection with Storage_Size => 0;
   type Connection is tagged record
      Impl : DBusConnection_Access;
   end record;
end dbus.Connections;
