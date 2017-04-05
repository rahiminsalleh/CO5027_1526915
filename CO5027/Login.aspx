<%@ Page Title="Sign in" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
    <style type="text/css">
        .auto-style1 {
            width: 229px;
        }
        .auto-style2 {
            height: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Sign In</h2>
                <h5 class="section-tagline">Please fill in the requirments.</h5>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label">Username:</asp:Label>

                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtusername" runat="server" Width="246px"></asp:TextBox> 

                        </td>
                    </tr>
                    <tr>
                        <td> 
                            <asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>

                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtpassword" runat="server" Width="246px"></asp:TextBox>
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
