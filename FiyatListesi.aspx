<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FiyatListesi.aspx.cs" Inherits="HalUygulaması.FiyatListesi" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 138px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" enableviewstate="False">
        <div align="Center">
        <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Ürün Ekle" style="float: left" />
        <asp:Button ID="deleteButton" runat="server" OnClick="deleteButton_Click" Text="Ürün Sil"/>
        <asp:Button ID="updateButton" runat="server" OnClick="updateButton_Click" Text="Ürün Güncelle" style="float: right" />
        </div>
        <br />
        <br />
        <br />
        <div align="Center">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CellPadding="1" CssClass="auto-style2" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" ValidateRequestMode="Enabled" Width="234px" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="90%" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="80%" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="urun_adi" HeaderText="urun_adi" SortExpression="urun_adi" />
                <asp:BoundField DataField="urun_cinsi" HeaderText="urun_cinsi" SortExpression="urun_cinsi" />
                <asp:BoundField DataField="urun_turu" HeaderText="urun_turu" SortExpression="urun_turu" />
                <asp:BoundField DataField="satis_fiyati" HeaderText="satis_fiyati" SortExpression="satis_fiyati" />
                <asp:BoundField DataField="birim_adi" HeaderText="birim_adi" SortExpression="birim_adi" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EYBConnectionString %>" SelectCommand="SELECT [urun_adi], [urun_cinsi], [urun_turu], [satis_fiyati], [birim_adi], [id] FROM [Urunler] WHERE ([tarih] = @tarih)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="tarih" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        
        <br />
        <br />
    </form>
</body>
</html>
