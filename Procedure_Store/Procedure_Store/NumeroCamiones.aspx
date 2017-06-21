<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumeroCamiones.aspx.cs" Inherits="Procedure_Store.NumeroCamiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelNCamiones" runat="server" Text="El numero de camiones es :">

            </asp:Label><asp:Button ID="ButtonNCamiones" runat="server" Text="Ver" OnClick="ButtonNCamiones_Click" />
        </div>
         <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Index.aspx" runat="server">Volver</asp:HyperLink>
        </div>
    </form>
</body>
</html>
