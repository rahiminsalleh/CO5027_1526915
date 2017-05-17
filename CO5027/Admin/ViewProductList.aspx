<%@ Page Title="View Product Lists" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="ViewProductList.aspx.cs" Inherits="CO5027.ViewProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="clearfix">
        <div class="container">
                <h2 class="section-title">View Product List</h2>
                <asp:Button CssClass="productbtn" ID="btnReturn" runat="server" Text="Return Product Lists" OnClick="btnReturn_Click" />
                <div class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="viewproduct" GridLines="Vertical" Width="1025px">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="~/ProductImages/{0}.jpg" ControlStyle-Width="100" ControlStyle-Height="100">
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="viewproduct" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                </div>
        </section>
</asp:Content>
