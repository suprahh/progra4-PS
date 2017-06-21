<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecorridoChoferes.aspx.cs" Inherits="Procedure_Store.RecorridoChoferes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Id chofer : </label>
            <asp:TextBox ID="TextBoxIdChofer" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="ButtonVer" runat="server" Text="Button" OnClick="ButtonVer_Click" />
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
