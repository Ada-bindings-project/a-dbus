with Ada.Environment_Variables;
with GNAT.Traceback.Symbolic;
with GNAT.Exception_Traces;
with Ada.Text_IO; use Ada.Text_IO;
with Dbus.Connections;
procedure Dbus.Test.Main is
   C : Dbus.Connections.Connection;
begin

   GNAT.Exception_Traces.Trace_On (GNAT.Exception_Traces.Every_Raise);
   GNAT.Exception_Traces.Set_Trace_Decorator (GNAT.Traceback.Symbolic.Symbolic_Traceback_No_Hex'Access);

   C.Open (Ada.Environment_Variables.Value ("DBUS_SESSION_BUS_ADDRESS"));
   Put_Line (C.Is_Connected'Img);
   Put_Line (C.Is_Authenticated'Img);
   Put_Line (C.Is_Anonymous'Img);
   Put_Line (C.Server_Id);

   --  C.Close;
end Dbus.Test.Main;
