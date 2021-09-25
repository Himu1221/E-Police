<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="E_Police.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
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
                           <h3>Member Login</h3>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username can't be empty!" ControlToValidate="TextBox1" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True" ViewStateMode="Inherit" Display="Dynamic" ValidateRequestMode="Inherit"></asp:RequiredFieldValidator>
                                        
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password can't be empty!" ControlToValidate="TextBox2"  ForeColor="Red" CssClass="alert-warning" ViewStateMode="Inherit" Display="Dynamic" SetFocusOnError="True" ValidateRequestMode="Inherit"></asp:RequiredFieldValidator>
                                </div>
                                
                                <br/>
                                <div class="form-group">
                                    <asp:Button class=" btn  btn-success " ID="Button1" runat="server" Text="Login" Width="100%" OnClick="Button1_Click" />
                                </div>
                                <center><a href="homepage.aspx"><< Back to Home</a></center>
                                <br/>
                                <div class="form-group">
                                    <asp:Button class=" btn btn-info btn" ID="Button2" runat="server" Text="SignUp" Width="100%" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
    </br>
</asp:Content>
