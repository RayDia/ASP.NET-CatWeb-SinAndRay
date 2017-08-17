<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="_28199014.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <div id="home">
        <div class="site-slider">
            <ul class="bxslider">
                <li>
                    <img src="images/slider/slide1.jpg" alt="slider image 1">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Plan your trip</h2>
                                    <p class="color-white">Fusce elementum nisi et magna tristique, ut facilisis magna dapibus.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide2.jpg" alt="slider image 2">
                    <div class="container caption-wrapper">
                        <div class="slider-caption">
                            <h2>Bootstrap Layout</h2>
                            <p class="color-white">Pellentesque mollis purus ipsum. Fusce tristique ante et est placerat dignissim.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide3.jpg" alt="slider image 3">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Mobile Ready</h2>
                                    <p class="color-white">You may modify any content section as you wish.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide4.jpg" alt="slider image 4">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Responsive Theme</h2>
                                    <p class="color-white">Phasellus ultrices, nunc et tempus porta, tellus purus elementum.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide5.jpg" alt="slider image 5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Download it FREE!</h2>
                                    <p class="color-white">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <!-- /.bxslider -->
            <div class="bx-thumbnail-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="bx-pager">
                                <a data-slide-index="0" href="">
                                    <img src="images/slider/thumb1.jpg" alt="thumbnail 1" /></a>
                                <a data-slide-index="1" href="">
                                    <img src="images/slider/thumb2.jpg" alt="thumbnail 2" /></a>
                                <a data-slide-index="2" href="">
                                    <img src="images/slider/thumb3.jpg" alt="thumbnail 3" /></a>
                                <a data-slide-index="3" href="">
                                    <img src="images/slider/thumb4.jpg" alt="thumbnail 4" /></a>
                                <a data-slide-index="4" href="">
                                    <img src="images/slider/thumb5.jpg" alt="thumbnail 5" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.site-slider -->
    </div>
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
