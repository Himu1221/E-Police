<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewresponse.aspx.cs" Inherits="E_Police.viewresponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //$('#myTable').DataTable();
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                        <h4>View Response</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT [report_id], [user_id], [subject], [contact], [information], [image] FROM [user_response_tbl] WHERE ([user_id] = @user_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="user_id" Name="user_id" SessionField="user_id" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="report_id" DataSourceID="SqlDataSource1">

                                    <Columns>
                                        <asp:BoundField DataField="report_id" HeaderText="ID" ReadOnly="True" SortExpression="report_id" ControlStyle-Font-Bold="true" />

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">

                                                            <div class="row">
                                                                <div class="col-12" style="font-size: x-large; font-weight: bold">
                                                                    SUBJECT-<asp:Label ID="Label2" runat="server" Text='<%# Eval("subject") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>

                                                             <div class="row">
                                                                <div class="col-12" style="font-size: medium">
                                                                 Emergency Contact Officer-<asp:Label ID="Label5" runat="server" Text='<%# Eval("contact") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12" style="font-size: medium">
                                                                Report Response-<asp:Label ID="Label6" runat="server" Text='<%# Eval("information") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="150px" Width="100px" ImageAlign="NotSet" BorderStyle="Solid" BackColor="#FF9933" />
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
        </center>
        </div>
    </div>
</asp:Content>
