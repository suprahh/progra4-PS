<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumeroChoferes.aspx.cs" Inherits="Procedure_Store.NumeroChoferes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelNchoferes" runat="server" Text="Numero de choferes es : "></asp:Label>
            <asp:Button ID="ButtonNChoferes" runat="server" Text="cuantos choferes tengo" OnClick="ButtonNChoferes_Click" />
        </div>
         <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Index.aspx" runat="server">Volver</asp:HyperLink>
        </div>
    </form>
</body>
</html>
