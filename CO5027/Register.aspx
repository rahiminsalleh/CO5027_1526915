<%@ Page Title="" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CO5027.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Register</h2>
                <h5 class="section-tagline">Please fill in the requirments.</h5>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>

                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtRegEmail" runat="server" Width="246px"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>

                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtRegPassword" runat="server" Width="246px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style1">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" Width="68px" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>

</asp:Content>
