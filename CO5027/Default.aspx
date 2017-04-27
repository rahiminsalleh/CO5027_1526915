<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/SpikeUP.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CO5027.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Do not add anything here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix">
        <div class="container">
            <div class="section-left">
                <h2 class="section-title">Featured</h2>
                <h5 class="section-tagline">Our featured products recommended by the pros.</h5>
                <ul style="list-style-type: none" class="products">
                    <li>
                        <a href="#">
                            <img src="Kendama/ozorablack.png" alt="Ozora Black" width="200" height="200" />
                            <h4>Kendama Ozora (Black)</h4>
                            <p>$22.99</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="Kendama/Kendama-USA-Classic-Red.jpg" alt="KendamaUSA Classic Red" width="200" height="200" />
                            <h4>KendamaUSA Classic (Red)</h4>
                            <p>$16.99</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="Kendama/ozoralightblue.png" alt="Ozora Light Blue" width="200" height="200" />
                            <h4>Kendama Ozora (Light Blue)</h4>
                            <p>$22.99</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="Kendama/tk16-master-natural.jpg" alt="TK16 Master Natural" width="200" height="200" />
                            <h4>TK16 Master (Natural)</h4>
                            <p>$19.99</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="Kendama/ozorayellow.png" alt="Ozora Yellow" width="200" height="200" />
                            <h4>Kendama Ozora (Yellow)</h4>
                            <p>$22.99</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

</asp:Content>
