<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="_28199014.Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <section id="contact" class="parallax-section">
        <div class="container">
            <div class="row">

                <!-- Section title
                ================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                    <div class="section-title">
                        <h5 class="wow bounceIn">LOGIN NOW</h5>
                        <h1 class="heading" runat="server">SIGIN IN</h1>
                        <hr>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla. Excepteu sunt in culpa qui officia deserunt mollit.</p>
                    </div>
                </div>

                <!-- Contact form section
                ================================================== -->
                <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox ID="lusername" runat="server" type="text" class="form-control" placeholder="Account" name="account" />
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox ID="lpassword" runat="server" type="text" class="form-control" placeholder="Password" name="password" />
                    </div>


                    <div>
                        <asp:Button runat="server" Value="SIGN IN" OnClick="BtnLogin_Click" />
                    </div>
                    <div>
                        <asp:Button runat="server" value="SIGN UP" OnClick="BtnSignup_Click" />
                    </div>

                </div>
            </div>
        </div>

    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
</asp:Content>
