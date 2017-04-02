<%@ Page Title="" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
    <style type="text/css">
        #txtMessage {
            height: 177px;
            width: 310px;
        }
        .auto-style1 {
            width: 60px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h1 class="section-title">Contact</h1>
                <h5 class="section-tagline">Please fill in the requirement below. Our customer service will shortly reply to your Email.</h5>
                <table>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="Name">Name:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="241px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server" Text="Email">Email:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="240px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label4" runat="server" Text="Subject">Subject:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server" Width="241px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Message">Message:</asp:Label></td>
                        <td>
                            <textarea id="txtMessage"></textarea></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="space">
                            <asp:Button ID="btnreset" runat="server" Text="Reset" Height="28px" Width="74px" />
                            <asp:Button ID="btnsend" runat="server" Text="Send" OnClick="btnsend_Click" Height="28px" Width="74px" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </section>

</asp:Content>
