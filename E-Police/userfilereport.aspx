<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userfilereport.aspx.cs" Inherits="E_Police.userfilereport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //$('#myTable').DataTable();
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable({
                "pageLength": 2
            });

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
    <div class="container-fluid" >
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>File Report</h4>
                        </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                          <h1 style="font-size:50px;"><i class="fas fa-file-invoice"></i></h1>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col">
                                <label>Report ID :</label><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                            </div>
                        </div>


                        <div class="row">

                            <div class="col">
                                <label>Place:</label><asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Crime Place"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter City!" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Only Capital letters allowed!" ControlToValidate="TextBox4" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="[A-Z\s]+"></asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Date of Crime</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date of Crime" TextMode="Date"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Date" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Time</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Time of Crime" TextMode="Time"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Time!" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Description of Person</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Name,Age,Information Related to person involved" TextMode="MultiLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Description" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Incident in Detail</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Incident in Detail" TextMode="multiline"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Incident!" ControlToValidate="TextBox8" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <center>
                            <div class="col">
                                <img id="imgview" style="height: 150px; width: 100px;" src="file_report/adminuser.png" />
                            </div>
                                </center>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" ID="FileUpload1" Class="form-control" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button4" class="btn btn-success" runat="server" Text="Submit Report" Width="100%" OnClick="Button4_Click1" />
                            </div>
                            </br>
                        </div>

                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a>
                <br>
                <br>
            </div>
           



            <div class="col-md-7">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Crime reported</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT [report_id], [crime_place], [date_of_crime], [time], [description_of_person], [incident_in_detail], [image_proof] FROM [file_report_tbl] WHERE ([user_id] = @user_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="user_id" Name="user_id" SessionField="user_id" Type="String" />
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
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("crime_place") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
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

    </div>



</asp:Content>
