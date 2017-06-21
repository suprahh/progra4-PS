<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecorridoCamione.aspx.cs" Inherits="Procedure_Store.RecorridoCamione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Recorrido camion</h1>
            <br />
            <h2>seleccion un rango de fecha</h2>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Id camion :  "></asp:Label>
            <asp:TextBox ID="TextBoxIdCamion" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Desde : </label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>
        <div>
            <label>Hasta : </label>
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        </div>
        <div>
            <asp:Button ID="ButtonVer" runat="server" Text="Ver informacion de camion por rango de fecha" OnClick="ButtonVer_Click" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
         <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Index.aspx" runat="server">Volver</asp:HyperLink>
        </div>
    </form>
</body>
</html>
