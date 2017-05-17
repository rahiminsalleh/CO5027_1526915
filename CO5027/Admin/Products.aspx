<%@ Page Title="Product Edit" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CO5027.Products" %>

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
                <h2 class="section-title">Product Lists</h2>
                <asp:Button CssClass="productbtn" ID="btnView" runat="server" Text="View Products Table" OnClick="btnView_Click" />
                <div>
                    <div class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None" ShowFooter="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Width="1027px">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:LinkButton ValidationGroup="Add New Item" OnClick="btnAdd_Click" ID="btnAdd" runat="server">Add New Item</asp:LinkButton>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valEditName" runat="server"
                                        ErrorMessage="Product name is a required field"
                                        ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valInsertName" runat="server"
                                        ErrorMessage="Product name is a required field"
                                        ControlToValidate="txtName" Text="*" ForeColor="Red"
                                        ValidationGroup="Add New Item">
                                    </asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Brand" SortExpression="Brand">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Brand") %>'>
                                        <asp:ListItem>Select Brand</asp:ListItem>
                                        <asp:ListItem>Ozora</asp:ListItem>
                                        <asp:ListItem>KendamaUSA</asp:ListItem>
                                        <asp:ListItem>TK16-Master</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="valEditBrand" runat="server"
                                        ErrorMessage="Product Brand is a required field" Text="*"
                                        ControlToValidate="DropDownList1" ForeColor="Red"
                                        InitialValue="Select Brand">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Brand") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Select Brand</asp:ListItem>
                                        <asp:ListItem>Ozora</asp:ListItem>
                                        <asp:ListItem>KendamaUSA</asp:ListItem>
                                        <asp:ListItem>TK16-Master</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="valInsertBrand" runat="server"
                                        ErrorMessage="Product Brand is a required field" Text="*"
                                        ControlToValidate="DropDownList1" ForeColor="Red"
                                        InitialValue="Select Brand" ValidationGroup="Add New Item">
                                    </asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valEditPrice" runat="server"
                                        ErrorMessage="Price is a required field" Text="*"
                                        ControlToValidate="TextBox3" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valInsertPrice" runat="server"
                                        ErrorMessage="Price is a required field" Text="*"
                                        ControlToValidate="txtPrice" ForeColor="Red"
                                        ValidationGroup="Add New Item">
                                    </asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stock" SortExpression="Stock">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valEditStock" runat="server"
                                        ErrorMessage="Stock is a required field" Text="*"
                                        ControlToValidate="TextBox4" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valInsertStock" runat="server"
                                        ErrorMessage="Stock is a required field" Text="*"
                                        ControlToValidate="txtStock" ForeColor="Red"
                                        ValidationGroup="Add New Item">
                                    </asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" InsertVisible="False" Text="Set Image" ControlStyle-ForeColor="Black" >
<ControlStyle ForeColor="Black"></ControlStyle>
                            </asp:HyperLinkField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    </div>
                    <div class="auto-style3">
                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Add New Item"
                            ForeColor="Red" runat="server" />
                    </div>
                    <div class="auto-style3">
                        <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red"
                            runat="server" />
                    </div>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Brand] = @original_Brand) OR ([Brand] IS NULL AND @original_Brand IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [Product] ([Name], [Brand], [Price], [Stock]) VALUES (@Name, @Brand, @Price, @Stock)" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Brand] = @Brand, [Price] = @Price, [Stock] = @Stock WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Brand] = @original_Brand) OR ([Brand] IS NULL AND @original_Brand IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Brand" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_Stock" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Stock" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Stock" Type="Int32" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Brand" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_Stock" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
    </section>
</asp:Content>
