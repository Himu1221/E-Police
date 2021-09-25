<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_Police.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body" style="background-color:white">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h1 style="font-size:100px;"><i class="fas fa-user"></i></h1>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>User Registration</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter full name!" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="date of birth" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter DOB!" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                        </div>


                        <div class="row">

                            <div class="col-md-6">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact No" TextMode="Phone" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Mobile Number" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Number" ControlToValidate="TextBox5" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Email" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox6" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="^([^@\s\.&quot;'\(\)\[\]\{\}\\/,:;]+\.)*[^@\s\.&quot;'\(\)\[\]\{\}\\/,:;]+@[^@\s\.&quot;'\(\)\[\]\{\}\\/,:;]+(\.[^@\s\.&quot;'\(\)\[\]\{\}\\/,:;]+)+$"></asp:RegularExpressionValidator>
                                
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Aadhar Card</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Aadhar Card" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Aadhar Number" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Aadhar Number" ControlToValidate="TextBox7" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$"></asp:RegularExpressionValidator>
                                
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter Pincode" ControlToValidate="TextBox8" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Pincode" ControlToValidate="TextBox8" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="^[1-9]{1}[0-9]{2}[0-9]{3}$"></asp:RegularExpressionValidator>
                                
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select state!" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="City"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter city!" ControlToValidate="TextBox10" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                   </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter address!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                   </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <span class="badge bg-info text-dark">Login Credentials</span>
                                    </center>
                            </div>

                            <div class="row">

                                <div class="col-md-6">
                                    <label>User ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="User ID"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter User ID!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                  
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter password!" ControlToValidate="TextBox9" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter a valid password!" SetFocusOnError="True" ValidationExpression="^(?:(?:(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]))|(?:(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]))|(?:(?=.*[0-9])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]))|(?:(?=.*[0-9])(?=.*[a-z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]))).{8,32}$" ControlToValidate="TextBox9"></asp:RegularExpressionValidator>
                                         </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col">
                                    <div class="form-control">
                                        <asp:Button Class="btn btn-success btn" ID="Button1" runat="server" Text="Sign Up" Width="100%" OnClick="Button1_Click" />
                                        
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
    <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div></div>
    </br>
</asp:Content>
