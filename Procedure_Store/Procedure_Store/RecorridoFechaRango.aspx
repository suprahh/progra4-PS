<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecorridoFechaRango.aspx.cs" Inherits="Procedure_Store.RecorridoFechaRango" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>selecciona una fecha o un rango de fecha</h1>
            <label>Desde o En :</label>
            <asp:Calendar ID="CalendarDesde" runat="server"></asp:Calendar>
        </div>
        <div>
            <label>Hasta</label>
            <asp:Calendar ID="CalendarHasta" runat="server"></asp:Calendar>
        </div>
        <div>
            <asp:Button ID="ButtonDesplegar" runat="server" Text="Ver Recorridos" OnClick="ButtonDesplegar_Click" />
        </div>
        <div>
            <asp:GridView ID="GridView1" AutoGenerateColumns="true" runat="server"></asp:GridView>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Index.aspx" runat="server">Volver</asp:HyperLink>
        </div>
    </form>
</body>
</html>
