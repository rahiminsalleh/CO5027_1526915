<%@ Page Title="Contact" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Contact</h2>
                <h4 class="section-tagline">Please fill in the requirement below. Our customer service will shortly reply to your Email.</h4>
                <h5 class="section-tagline">
                    <asp:Literal ID="Status" runat="server"></asp:Literal>
                </h5>
                <table class="borderspace">
                    <tr>
                        <td class="txtcolor">
                            <asp:Label ID="Label1" runat="server" Text="Name">Name:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Columns="35" CssClass="txtbox" Font-Bold="True"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="txterror" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the information required." ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                        <td rowspan="4">
                            <%--https://www.w3schools.com/graphics/google_maps_basic.asp--%>
                            <div id="location" style="width: 500px; height: 400px;">
                                <script>
                                    function myMap() {
                                        var mapProp = {
                                            center: new google.maps.LatLng(4.8857309, 114.9316692),
                                            zoom: 20,
                                        };
                                        var map = new google.maps.Map(document.getElementById("location"), mapProp);
                                    }
                                </script>
                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDogVduhCkLglvVPfSBk0I2cyLw4pxDQ-s&callback=myMap"></script>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="txtcolor">
                            <asp:Label CssClass="txtContent" ID="Label2" runat="server" Text="Email">Email:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Columns="35"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="txterror" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Email information." ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator CssClass="txterror" runat="server" ErrorMessage="Please enter a valid email address." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="txtcolor">
                            <asp:Label CssClass="txtContent" ID="Label4" runat="server" Text="Subject">Subject:</asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="SubjectList" runat="server" Row="10">
                                <asp:ListItem>Ask a question</asp:ListItem>
                                <asp:ListItem>Report a bug</asp:ListItem>
                                <asp:ListItem>Customer support</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="txtcolor">
                            <asp:Label CssClass="txtContent" ID="Label3" runat="server" Text="Message">Message:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="multiline" ID="txtMessage" runat="server" Columns="65" Rows="10" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="txterror" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill in your message." ControlToValidate="txtMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2" colspan="2">
                            <asp:Button CssClass="myBtn" ID="btnSendEmail" runat="server" Text="Send" OnClick="btnSendEmail_Click"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>

</asp:Content>
