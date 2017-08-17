<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="_28199014.FAQ" %>

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
                        <h5 class="wow bounceIn">ACTIVE PEOPLE</h5>
                        <h1 class="heading">Frequently Asked Questions</h1>
                        <hr>
                        <p class="color-white">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteu sunt in culpa qui officia deserunt.</p>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12">
                    <h2 class="mobile-top" style="color:black;">Frequently Asked Questions</h2>
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Is Kibble or Raw Dog Food the Healthier Choice?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p>Kibble dog food can be an option if you prefer making dog food at home. In some cases, your pet may need a special diet to heal different digestive diseases or diarrhea. It’s always good to know what ingredients to feed your dog and how to obtain the best kibble food.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">Dog Training Tips?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <p>Dog training tips vary from trainer to trainer. In fact, an old joke states that the only thing two dog trainers will agree on is what the third trainer is doing wrong. However, there are some tips that most dog trainers recommend.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">What to Look for in Good Dog Breeders?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <p>Reputable dog breeders are hard to find, even though there are thousands of breeders from which to choose. However, if you don’t get your dog from a reputable breeder, they might have health or behavior problems that cost you money and cause you heartache.</p>
                                </div>
                            </div>
                        </div>

                    </div>
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
