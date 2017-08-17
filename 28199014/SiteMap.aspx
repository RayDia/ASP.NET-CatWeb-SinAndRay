<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="_28199014.SiteMap" %>

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
                        <h5 class="wow bounceIn">OVERVIEW OF WEBSITE</h5>
                        <h1 class="heading">SITE MAP</h1>
                        <hr>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteu sunt in culpa qui officia deserunt.</p>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    <asp:TreeView ID="TreeView1" runat="server"
                        DataSourceID="SiteMapDataSource1" ShowLines="True" />
                </div>


            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
    <!-- Footer section
================================================== -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">

                    <h2 class="wow bounceIn">ADVENTURE STUDIO</h2>
                    <ul class="social-icon">
                        <li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
                        <li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
                        <li><a href="#" class="fa fa-dribbble wow fadeIn" data-wow-delay="0.9s"></a></li>
                        <li><a href="#" class="fa fa-behance wow fadeIn" data-wow-delay="1s"></a></li>
                        <li><a href="#" class="fa fa-github wow fadeIn" data-wow-delay="1.3s"></a></li>
                        <li><a href="#" class="fa fa-tumblr wow fadeIn" data-wow-delay="1.6s"></a></li>
                    </ul>
                    <p>
                        Copyright &copy; 2016 Adventure Studio 
                
                | Design: <a rel="nofollow" href="http://www.bing.com" target="_parent">Xuan & Ray</a>
                    </p>

                </div>
            </div>
        </div>
    </footer>
</asp:Content>
