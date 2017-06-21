<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GastoCamiones.aspx.cs" Inherits="Procedure_Store.GastoCamiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>seleciona un rango de fecha</h1>
            <br />
            <label>desde :</label>
            <asp:Calendar ID="CalendarDesde" runat="server"></asp:Calendar>
            <br />
            <label>Hasta :</label>
            <asp:Calendar ID="CalendarHasta" runat="server"></asp:Calendar>
        </div>
        <div>
            <asp:Button ID="ButtonVer" runat="server" Text="Ver el gasto" OnClick="ButtonVer_Click" />
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
