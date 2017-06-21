<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoRecorridos.aspx.cs" Inherits="Procedure_Store.InfoRecorridos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Label">Recorrido</asp:Label>
                <asp:TextBox ID="TextBoxRecorrido" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="ButtonListar" runat="server" Text="ver" OnClick="ButtonListar_Click" />
            </div>
            <div>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
             <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Index.aspx" runat="server">Volver</asp:HyperLink>
        </div>
        </div>
    </form>
</body>
</html>
