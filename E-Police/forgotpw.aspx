<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpw.aspx.cs" Inherits="E_Police.forgotpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body" style="background-color: white">
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
                           <h4>Reset Password</h4>
                                   
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
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="User ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter User ID!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                  
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Aadhar Card</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Aadhar Card" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Aadhar Number" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Aadhar Number" ControlToValidate="TextBox7" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$"></asp:RegularExpressionValidator>
                                
                                </div>
                            </div>



                        </div>
                        </br>
                        <div class="row">
                            <div class="col">
                                <center>
                                <span class="badge bg-info text-dark">Set Password</span>
                                    </center>
                            </div>

                            <div class="row">

                                <div class="col-md-6">
                                    <label>New Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter new password!" ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        
                                    </div>
                                    
                                </div>

                                <div class="col-md-6">
                                    <label>Confirm New Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter new password!" ControlToValidate="TextBox9" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Overline="True" ErrorMessage="Password Mismatch!" ControlToCompare="TextBox11" ControlToValidate="TextBox9" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                </div>
                                
                            </div>

                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <div class="form-control">
                                        <asp:Button Class="btn btn-primary" ID="Button1" runat="server" Text="Reset" Width="100%" />
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
</asp:Content>
