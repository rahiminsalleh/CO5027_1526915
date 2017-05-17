<%@ Page Title="KendamaUSA" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="KendamaUSA.aspx.cs" Inherits="CO5027.KendamaUSA" %>

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
                <h2 class="section-title">KendamaUSA CLASSIC</h2>
                <h5 class="section-tagline">Kendama created by KendamaUSA with USA quality wood that would put the sound<br />
                    in your fisrt Big Cup catch for a beginners choice and Pros .</h5>
                <div class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="847px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Price" SortExpression="Price" />
                        <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="~/ProductImages/{0}.jpg" ControlStyle-Height="400" ControlStyle-Width="400">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT ID, Name, Brand, Price FROM Product WHERE (Brand = 'KendamaUSA')"></asp:SqlDataSource>
            </div>
        </div>
    </section>

</asp:Content>
