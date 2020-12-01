pragma Ada_2012;
with Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Errors_H;
with Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Shared_H;
with Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Bus_H;
with Interfaces.C.Strings;
with Dbus.Errors;
with ada.Text_IO;
package body Dbus.Connections is
   use Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Errors_H;
   use Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Connection_H;
   use Interfaces.C.Strings;
   use Interfaces.C;
   use Dbus.Errors;
   use ada.Text_IO;
   ----------
   -- Open --
   ----------

   procedure Open (Con : in out Connection; Address : String) is
      Error  : aliased DBusError;
      L_Addr : Chars_Ptr := New_String (Address);
   begin
      Con.Impl := Dbus_Connection_Open (Address => L_Addr, Error => Error'Access);
      Interfaces.C.Strings.Free (L_Addr);
      if Con.Impl = null then
         raise DBUS_ERROR with Image (Error);
      end if;
   end Open;

   ------------------
   -- Open_Private --
   ------------------

   procedure Open_Private (Con : in out Connection; Address : String) is
      Error  : aliased DBusError;
      L_Addr : Chars_Ptr := New_String (Address);
   begin
      Con.Impl := Dbus_Connection_Open_Private (Address => L_Addr, Error => Error'Access);
      Interfaces.C.Strings.Free (L_Addr);
      if Con.Impl = null then
         raise DBUS_ERROR with Image (Error);
      end if;
   end Open_Private;

   function Get ( Bustype : DBusBusType ) return Connection is
      Error  : aliased DBusError;
      Map    : constant array (DBusBusType) of Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Shared_H.DBusBusType
        := (SESSION_Bus => Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Shared_H.DBUS_BUS_SESSION,
            SYSTEM_Bus  => Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Shared_H.DBUS_BUS_SYSTEM,
            STARTER_Bus => Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Shared_H.DBUS_BUS_STARTER);
        Ret : Connection;
   begin
      Ret.Impl := Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Bus_H.Dbus_Bus_Get (Map (Bustype), Error'Access);
      if Ret.Impl = null then
         raise DBUS_ERROR with Image (Error);
      end if;

      return Ret;
   end;

   ---------
   -- Ref --
   ---------

   function Ref (Con : in Connection) return Connection is
   begin
      return ret : Connection do
         Ret.Impl := Dbus_Connection_Ref (Con.Impl);
      end return;
   end Ref;

   -----------
   -- Unref --
   -----------

   procedure Unref (Con : in out Connection) is
   begin
      Dbus_Connection_Unref (Con.Impl);
   end Unref;

   -----------
   -- Close --
   -----------

   procedure Close (Con : in out Connection) is
   begin
      if con.Impl /= null then
         Dbus_Connection_Close (Con.Impl);
      end if;
   end Close;

   ------------------
   -- Is_Connected --
   ------------------

   function Is_Connected (Con : in Connection) return Boolean is
   begin
      return (if Con.Impl /= null then dbus_connection_get_is_connected(Con.Impl) /= 0 else False);
   end Is_Connected;

   ----------------------
   -- Is_Authenticated --
   ----------------------

   function Is_Authenticated (Con : in Connection) return Boolean is
   begin
      return (if Con.Impl /= null then Dbus_Connection_Get_Is_Authenticated (Con.Impl) /= 0 else False);
   end Is_Authenticated;

   ------------------
   -- Is_Anonymous --
   ------------------

   function Is_Anonymous (Con : in Connection) return Boolean is
   begin
      return (if Con.Impl /= null then Dbus_Connection_Get_Is_Anonymous (Con.Impl) /= 0 else False);
   end Is_Anonymous;

   ---------------
   -- Server_Id --
   ---------------

   function Server_Id (Con : in Connection) return String is
   begin
      return Value (Dbus_Connection_Get_Server_Id (Con.Impl));
   end Server_Id;

   -------------------
   -- Can_Send_Type --
   -------------------

   function Can_Send_Type
     (Con : in Connection; C_Type : Integer) return Boolean
   is
   begin
      return Dbus_Connection_Can_Send_Type (Con.Impl, int(C_Type)) /= 0;
   end Can_Send_Type;

end Dbus.Connections;
