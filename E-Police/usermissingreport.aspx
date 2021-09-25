<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usermissingreport.aspx.cs" Inherits="E_Police.usermissingreport" %>

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
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>File Missing Report</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                            <h1 style="font-size:50px;"><i class="far fa-id-badge"></i></h1>
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
                                <label>Report ID :</label><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Name of person</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter Name" ControlToValidate="TextBox9" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Only Capital letters allowed!" ControlToValidate="TextBox9" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="[A-Z\s]+"></asp:RegularExpressionValidator>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Age</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Age" ControlToValidate="TextBox10" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Age" ControlToValidate="TextBox10" SetFocusOnError="True" ValidateRequestMode="Inherit" ValidationExpression="^([0-9]|[1-9][0-9]|100)$"></asp:RegularExpressionValidator>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Place of Last Seen</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Place last seen"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Place" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Date of Missing</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date of Missing" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Date!" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Time of Missing</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Time of Missing" TextMode="Time"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Time!" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Description of Missing Person</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Information Related to Missing Person involved" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Description" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <center>
                              <div class="col">
                                   <img id="imgview" style="height:150px;width:100px;" src="file_report/adminuser.png" />
                              </div>
                                 </center>
                        </div>
                        <hr />
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
                                <asp:Button class="btn btn-success" runat="server" Text="Submit Report" Width="100%" ID="Button4" OnClick="Button4_Click" />
                            </div>
                        </div>

                    </div>
                </div>


            </div>




            <div class="col-md-7">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Missing Reports</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT [report_id], [missing_person_name], [age], [place_last_seen], [date_missing], [time_missing], [description_missing_person], [missing_person_image] FROM [missing_report_tbl] WHERE ([pincode] = @pincode)">
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
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("missing_person_name") %>'></asp:Label>
                                                                </div>
                                                            </div>


                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Age-<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("age") %>'></asp:Label>
                                                                    &nbsp;| Last Seen-<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("place_last_seen") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Date-<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("date_missing") %>'></asp:Label>
                                                                    &nbsp;| Time-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("time_missing") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description Of Person-<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("description_missing_person") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" runat="server" BackColor="#FF6600" BorderStyle="Solid" Height="170px" ImageAlign="Left" ImageUrl='<%# Eval("missing_person_image") %>' Width="100px" />
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
