<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="_28199014.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <section id="contact" class="parallax-section">
        <div class="container">
            <div class="row">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                <!-- Section title
                ================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                    <div class="section-title">
                        <h5 class="wow bounceIn">PLAN YOUR TRIP</h5>
                        <h1 class="heading" runat="server">REGISTERATION</h1>
                        <hr>
                        <p class="font-color">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla. Excepteu sunt in culpa qui officia deserunt mollit.</p>
                    </div>
                </div>
            </div>

            <!-- Contact form section
                ================================================== -->
            <div class="col-md-offset-1 col-md-10 col-sm-12">
                <div class="col-lg-12">
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">USER NAME</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" type="text" ID="username" class="form-control" placeholder="User Name" name="username" />
                        <asp:RequiredFieldValidator ControlToValidate="username" Text="The user name field is required!" runat="server" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" runat="server" ErrorMessage="Only letters required!" ValidationExpression="^[A-Za-z]+$" ControlToValidate="username"></asp:RegularExpressionValidator>
                        <asp:CustomValidator runat="server" ID="usernameCV" Display="Static" ErrorMessage="User Exist!"  ForeColor="Red"  ControlToValidate="username" OnServerValidate="usernameCV_ServerValidate" />
                        <!--add CustomValidator!-->

                    </div>

                    <!--user type-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">USER TYPE</h5>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="usertype" Text="User" type="text" class="form-control" placeholder="User type" name="usertype" />
                    </div>

                    <!--email & password-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">EMAIL</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="email" type="email" class="form-control" placeholder="Email" name="email" />
                        <asp:RequiredFieldValidator ControlToValidate="email" Text="The email field is required!" runat="server" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" ErrorMessage="Wrong email format!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>

                    </div>
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">PASSWORD</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="password" type="text" class="form-control" placeholder="Password" name="password" />
                        <asp:RequiredFieldValidator ControlToValidate="password" Text="The password field is required!" runat="server" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" runat="server" ErrorMessage="The password must begin with letters and 6-18 letters long !" ValidationExpression="^[a-zA-Z]\w{5,17}$" ControlToValidate="password"></asp:RegularExpressionValidator>

                    </div>

                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">CONFIRM PASSWORD</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="confirmpassword" type="text" class="form-control" placeholder="Confirm Password" name="confirmpassword" />
                        <asp:RequiredFieldValidator ControlToValidate="confirmpassword" Text="You must confirm the password!" runat="server" ForeColor="Red" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Confirm password does not match" ForeColor="Red" Operator="Equal"></asp:CompareValidator>
                    </div>

                    <!--age-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">AGE</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" type="Integer" ID="age" class="form-control" />
                        <asp:RangeValidator ID="rangeValidator2" runat="server" ControlToValidate="age" ErrorMessage="Wrong birthday selection!" MinimumValue="0" MaximumValue="100" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                        <%--<asp:CustomValidator ID="ageCustomValidator" runat="server" ControlToValidate="age" OnServerValidate="ageCustomValidator_ServerValidate" ErrorMessage="Please input right age!" Display="Dynamic"></asp:CustomValidator>--%>

                    </div>

                    <!--address-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn">ADDRESS</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="address" type="text" class="form-control" placeholder="Address" name="address" />
                        <asp:RequiredFieldValidator ControlToValidate="address" Text="The address field is required!" runat="server" />
                    </div>


                    <div class="row">
                        <!--Birthday-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn">BIRTHDAY</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:TextBox runat="server" ID="d12" type="text" BackColor="Transparent" onfocus="WdatePicker({lang:'eng'})"/>
                            <asp:RequiredFieldValidator ControlToValidate="d12" Text="Empty Birthday!" runat="server" ForeColor="Red" />
                            <asp:RangeValidator ControlToValidate="d12" MinimumValue="1917-01-01" MaximumValue="2017-12-13" runat="server" ErrorMessage="Please input correct age!"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="row">
                        <!--cat fur-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn">FUR TYPE</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:DropDownList ID="furDropDownList" runat="server" BackColor="Transparent">
                                <asp:ListItem> </asp:ListItem>
                                <asp:ListItem>Hairless</asp:ListItem>
                                <asp:ListItem>Shorthair</asp:ListItem>
                                <asp:ListItem>Longhair</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="furDropDownList" Text="Select None!" runat="server" ForeColor="Red" />
                        </div>
                    </div>
                    <div class="row">
                        <!--cat size-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn">CAT SIZE</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:CheckBox ID="catsize1" runat="server" Text="small" Checked="true" BackColor="Transparent" />
                            <asp:CheckBox ID="catsize2" runat="server" Text="medium" BackColor="Transparent" />
                            <asp:CheckBox ID="catsize3" runat="server" Text="good" BackColor="Transparent" />
                        </div>
                    </div>
                    <div class="row">
                        <!--pets keeping experience-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn">EVER RASIED PETS?</h5>
                            <asp:RequiredFieldValidator ControlToValidate="petkeepRadioButtonList" Text="Please confirm your pets keeping experience !" runat="server" ForeColor="Red" />
                        </div>
                        <div class="col-md-6 col-sm-12">

                            <asp:RadioButtonList ID="petkeepRadioButtonList" runat="server" BackColor="Transparent" RepeatDirection="Horizontal">
                                <asp:ListItem>true</asp:ListItem>
                                <asp:ListItem>false</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                    </div>
                    <div class="row">
                        <!--sex-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn">GENDER</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:ListBox ID="genderListBox" Rows="2" runat="server" BackColor="Transparent">
                                <asp:ListItem>F</asp:ListItem>
                                <asp:ListItem>M</asp:ListItem>
                            </asp:ListBox>
                            <asp:RequiredFieldValidator ControlToValidate="genderListBox" Text="empty!" runat="server" ForeColor="Red" />
                        </div>
                    </div>

                    <!--user URL-->
                    <div class="col-md-12 col-sm-12">
                        <h5 class="wow bounceIn">RECOMMEND WEBSITES</h5>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" ErrorMessage="Wrong URL format!" ValidationExpression="^http://([\w-]+\.)+[\w-]+(/[\w-./?%&=]*)?$" ControlToValidate="url"></asp:RegularExpressionValidator>

                    </div>
                    <div class="col-ma-12 col-sm-12">
                        <asp:TextBox runat="server" ID="url" class="form-control" type="text" />

                    </div>

                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <input type="submit" class="form-control" value="SHOOT MESSAGE" />
                    </div>

                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <asp:Button ID="register" runat="server" Text="Rigister" OnClick="register_Click" />
                    </div>

                </div>
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
</asp:Content>
