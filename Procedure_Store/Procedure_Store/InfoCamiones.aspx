<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoCamiones.aspx.cs" Inherits="Procedure_Store.InfoCamiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Id camion"></asp:Label>
            <asp:TextBox ID="TextBoxIdCamion" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="ButtonBuscar" runat="server" Text="Button" OnClick="ButtonBuscar_Click" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </div>
         <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Index.aspx" runat="server">Volver</asp:HyperLink>
        </div>
    </form>
</body>
</html>
