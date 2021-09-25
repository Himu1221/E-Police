<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminemployeemanagement.aspx.cs" Inherits="E_Police.adminemployeemanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
            $(document).ready(function () {
            //$('#myTable').DataTable();
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           });
        </script>
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
                                        <h4>Employee Details</h4>
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
                            <div class="col-md-4">
                                <label>Employee ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                         
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label>Employee Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Employee Name"></asp:TextBox>
                                    
 
                                </div>
                            </div>
                        </div>
 <br>
                        <div class="row">
                           
                            <div class="col">
                              <asp:Button ID="Button4" class="btn btn-danger" Width="100%" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                       
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                 <asp:Button class=" btn  btn-success " ID="Button2" runat="server" Text="Add Officer" Width="100%" OnClick="Button2_Click1"/>
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
                                        <h4>Employee List</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT [police_station_name], [officer_id], [officer_name], [contact_no], [pincode], [system_id] FROM [employee_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="system_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="system_id" HeaderText="Police ID" ReadOnly="True" SortExpression="system_id" />
                                        <asp:BoundField DataField="police_station_name" HeaderText="Station Name" SortExpression="police_station_name" />
                                        <asp:BoundField DataField="officer_id" HeaderText="Officer ID" SortExpression="officer_id" />
                                        <asp:BoundField DataField="officer_name" HeaderText="Officer Name" SortExpression="officer_name" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
 
            </div>
 
        </div>
    </div>
</asp:Content>
