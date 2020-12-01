pragma Ada_2012;
with Interfaces.C.Strings;
package body Dbus.Errors is
   use Interfaces.C.Strings;
   -----------
   -- Image --
   -----------

   function Image
     (Item : Dbus.Low_Level.Dbus_1_0_Dbus_Dbus_Errors_H.DBusError)
      return String
   is
   begin
      return Value(Item.name) & ":" & Value(Item.message);
   end Image;

end Dbus.Errors;
