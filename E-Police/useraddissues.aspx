<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="useraddissues.aspx.cs" Inherits="E_Police.useraddissues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <center>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body" style="background-color:white">


                           <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Add Issues</h4>
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
                        <label>Add any issues:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="add any issues regarding the system" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Issue" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>
                        <div class="row">
                                <div class="col">
                                    <center>
                                    <div class="form-control">
                                        <asp:Button Class="btn btn-success" ID="Button1" runat="server" Text="Submit" Width="100%" OnClick="Button1_Click"/>
                                    </div>
                                        </center>
                                </div>
                            </div>

                    </div>
                </div>
            </div>
        </center>
        </div>
    </div>
</asp:Content>
