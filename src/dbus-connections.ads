private with Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Connection_H;
package Dbus.Connections is
   type Connection is tagged private;

   procedure Open (Con : in out Connection; Address : String);
   procedure Open_Private (Con : in out Connection; Address : String);

   function Get (Bustype : DBusBusType) return Connection;

   function Ref (Con : in Connection) return Connection;

   procedure Unref (Con : in out Connection);

   procedure Close (Con : in out Connection);

   function Is_Connected (Con : in Connection) return Boolean;
   function Is_Authenticated (Con : in Connection) return Boolean;
   function Is_Anonymous  (Con : in Connection) return Boolean;
   function Server_Id (Con : in Connection) return String;
   function Can_Send_Type (Con : in Connection; C_Type : Integer) return Boolean;


   DBUS_ERROR : exception;

private
   type DBusConnection_Access is access all Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Connection_H.DBusConnection with Storage_Size => 0;
   type Connection is tagged record
      Impl : DBusConnection_Access;
   end record;
end Dbus.Connections;
