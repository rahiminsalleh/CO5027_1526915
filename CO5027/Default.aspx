<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CO5027.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Featured</h2>
                <h5 class="section-tagline">Our featured products recommended by the pros.</h5>
                <div class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="849px" DataKeyNames="ID">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" Visible="False" />
                        <asp:BoundField DataField="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Price" SortExpression="Price" />
                        <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="~/ProductImages/{0}.jpg" ControlStyle-Height="200" ControlStyle-Width="200">
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [ID], [Name], [Brand], [Price] FROM [Product]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
