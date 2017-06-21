<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Procedure_Store.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><asp:Button ID="ButtonGetInfoTruckById" runat="server" Text="Informacion de camiones" OnClick="ButtonGetInfoTruckById_Click" />  </div>
            <div><asp:Button ID="ButtonGetInfoWay" runat="server" Text="Informacion de recorridos" OnClick="ButtonGetInfoWay_Click" /></div>
            <div><asp:Button ID="ButtonGetNumberDrivers" runat="server" Text="Numero de choferes" OnClick="ButtonGetNumberDrivers_Click" /></div>
            <div><asp:Button ID="ButtonGetNumberTrucks" runat="server" Text="Numero de camiones" OnClick="ButtonGetNumberTrucks_Click" /></div>
            <div><asp:Button ID="ButtonGetSpendTruck" runat="server" Text="Cuanto gastan los camiones" OnClick="ButtonGetSpendTruck_Click" /></div>
            <div><asp:Button ID="ButtonGetWayByIdTruckAndDate" runat="server" Text="Recorridos camiones por fecha" OnClick="ButtonGetWayByIdTruckAndDate_Click" /></div>
            <div><asp:Button ID="ButtonGetWaysDriverByIdDriver" runat="server" Text="Recorrido de choferes" OnClick="ButtonGetWaysDriverByIdDriver_Click" style="height: 26px" /></div>

        </div>
    </form>
</body>
</html>
