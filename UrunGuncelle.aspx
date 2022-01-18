<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="HalUygulaması.UrunGuncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Güncellenecek Olan Ürünün ID'si"></asp:Label>
&nbsp;:
            <asp:TextBox ID="urunID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="araButton" runat="server" OnClick="araButton_Click" Text="Ara" />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Ürün Adı</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="urunAdi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ürün Cinsi</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="urunCinsi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ürün Türü</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="urunTuru" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Satış Fiyatı</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="satisFiyati" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Birim Adı</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="birimAdi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tarih</td>
                    <td class="auto-style3">
                        <asp:Calendar ID="tarih" runat="server"></asp:Calendar>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="guncelleButton" runat="server" OnClick="guncelleButton_Click" Text="Güncelle" />
        </div>
    </form>
</body>
</html>
