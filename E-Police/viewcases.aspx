<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewcases.aspx.cs" Inherits="E_Police.viewcases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
          
        <div class="row">
            <div class="col-md-4" style="height:100%">
 
                <div class="card">
                    <div class="card-body" style="background-color:white">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Case Approval</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="imgs/adminuser.png" />
                                       
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
                                <label>Report ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter ID" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
 
                            
                        </div>
 <br>
                        <div class="row">
                           
                            <div class="col">
                              <asp:Button ID="Button4" class="btn btn-success" Width="100%" runat="server" Text="Approve" OnClick="Button4_Click" />
                            </div>
                       
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                 <asp:Button class=" btn  btn-danger " ID="Button2" runat="server" Text="Decline" Width="100%" OnClick="Button2_Click"/>
                             </div>
                        </div>
               
                        
 
 
                    </div>
                </div>
 </br>
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>
                
                
                <a href="homepage.aspx"><< Back to Home</a>
               
           </div>
 
            <div class="col-md-8"> 
                <div class="card">
                    <div class="card-body" style="background-color:white">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Case List</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT [report_id], [user_name], [user_id], [crime_place], [date_of_crime], [time], [description_of_person], [incident_in_detail], [image_proof] FROM [file_report_tbl] WHERE ([pincode] = @pincode)">
                                    <SelectParameters>
                                       <asp:SessionParameter DefaultValue="pincode" Name="pincode" SessionField="pincode" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="report_id" DataSourceID="SqlDataSource1">

                                    <Columns>
                                        <asp:BoundField DataField="report_id" HeaderText="ID" ReadOnly="True" SortExpression="report_id" />

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">

                                                            <div class="row">
                                                                <div class="col-12" style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal">
                                                                    Name-<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("user_name") %>'></asp:Label>
                                                                    &nbsp;| User ID-<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("user_id") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            

                                                            <div class="row">
                                                                <div class="col-12" style="font-size: large">
                                                                    Crime Place-<asp:Label ID="Label2" runat="server" Text='<%# Eval("crime_place") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                </div>
                                                            </div>


                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Date-<asp:Label ID="Label3" runat="server" Text='<%# Eval("date_of_crime") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Time-<asp:Label ID="Label4" runat="server" Text='<%# Eval("time") %>' Font-Bold="True"></asp:Label>
                                                                </div>
                                                            </div>

                                                             <div class="row">
                                                                <div class="col-12">
                                                                 Description Of Person-<asp:Label ID="Label5" runat="server" Text='<%# Eval("description_of_person") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                Incident In Detail-<asp:Label ID="Label6" runat="server" Text='<%# Eval("incident_in_detail") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("image_proof") %>' Height="150px" Width="100px" ImageAlign="NotSet" BorderStyle="Solid" BackColor="#FF9933" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                        </div>
 
 
                    </div>
                </div>
 
 
            </div>
 
        </div>
    </div>
</asp:Content>
