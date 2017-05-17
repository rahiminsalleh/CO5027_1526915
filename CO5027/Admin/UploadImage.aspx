<%@ Page Title="Upload Image" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="CO5027.UploadImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Image Upload</h2>
                <table>
                    <tr>
                        <td>
                            <asp:FileUpload ID="ImageUpload" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button CssClass="productbtn" ID="imageFileUploadControl" runat="server" Text="Upload" OnClick="imageFileUploadControl_Click" Width="122px" /></td>
                        <td rowspan="2">
                            <asp:Image ID="CurrentImage" runat="server" Height="200" Width="200" /></td>
                    </tr>
                    <tr>
                       <td class="auto-style1"><asp:Button CssClass="productbtn" ID="btnReturn" runat="server" Text="Return Product Lists" OnClick="btnReturn_Click" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
