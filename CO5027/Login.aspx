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
                <asp:PlaceHolder ID="LoginStatus" runat="server" Visible="false">
                    <h4>
                        <asp:Literal ID="StatusText" runat="server"></asp:Literal>
                    </h4>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="LoginForm" runat="server" Visible="false">
                    <table class="auto-style2">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="UserName">UserName:</asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtLogusername" runat="server" Width="246px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Password">Password:</asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtLogpassword" runat="server" Width="246px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style1">
                                <asp:Button ID="btnlogin" runat="server" Text="Login" Width="68px" OnClick="btnlogin_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:PlaceHolder>
                <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                    <asp:Button runat="server" OnClick="SignOut" Text="Log out" />
                </asp:PlaceHolder>
            </div>
        </div>
    </section>

</asp:Content>
