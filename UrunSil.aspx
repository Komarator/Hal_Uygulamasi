<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunSil.aspx.cs" Inherits="HalUygulaması.UrunSil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Silinecek Olan Ürünün ID'si"></asp:Label>
&nbsp;:
        <asp:TextBox ID="urunID" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sil" />
    </form>
</body>
</html>
