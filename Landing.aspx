<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="AplicacionBase.Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Bienvenido</h2>
            <asp:Label ID="Email" runat="server" Text="@Correo"></asp:Label>
            <h2>Tu nivel de acceso es: </h2>
            <asp:Label ID="NivelDeAcceso" runat="server" Text="@Nivel"></asp:Label>
        </div>
    </form>
</body>
</html>
