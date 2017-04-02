<%@ Page Title="" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h1 class="section-title">Heading 1</h1>
                <h5 class="section-tagline">Text will go here for information.</h5>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Name">Name:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Email">Email:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Subject">Subject:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Message">Message:</asp:Label></td>
                        <td>
                            <textarea id="txtMessage" cols="24" rows="7"></textarea></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnsend" runat="server" Text="Send" OnClick="btnsend_Click" /></td>
                        <td>
                            <asp:Button ID="btnreset" runat="server" Text="Reset" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </section>

</asp:Content>
