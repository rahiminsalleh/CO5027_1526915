<%@ Page Title="Contact" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Contact</h2>
                <h5 class="section-tagline">Please fill in the requirement below. Our customer service will shortly reply to your Email.</h5>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Name">Name:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Columns="35"></asp:TextBox>
                        </td>
                        <td rowspan="5">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1987.6607330695917!2d114.93057485790553!3d4.8857308991131525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x32228ac8ee3f7d03%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2sbn!4v1491197050818" width="400" height="300" frameborder="0" style="border: 0" allowfullscreen></iframe>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Email">Email:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Columns="35"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Subject">Subject:</asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="SubjectList" runat="server">
                                <asp:ListItem>Ask a question</asp:ListItem>
                                <asp:ListItem>Report a bug</asp:ListItem>
                                <asp:ListItem>Customer support</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Message">Message:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMessage" runat="server" Columns="35" Rows="10" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">
                            <asp:Button ID="btnSendEmail" runat="server" Text="Send" OnClick="btnSendEmail_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>

</asp:Content>
