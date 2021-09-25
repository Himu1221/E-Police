<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminuserissues.aspx.cs" Inherits="E_Police.adminuserissues" %>
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
            <center>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body" style="background-color:white">


                           <div class="row">
                            <div class="col">
                                <center>
                                        <h4>User Issues</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 


                        <div class="row">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT * FROM [userissues_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="description" HeaderText="List Of The User Issues" SortExpression="description" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </center>
        </div>
    </div>
    </br>
</asp:Content>