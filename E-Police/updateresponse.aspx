<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updateresponse.aspx.cs" Inherits="E_Police.updateresponse" %>
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
                    <div class="card-body" style="background-color:white">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Update Response</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <i class="fa fa-edit" style="font-size:50px"></i>
                                       
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-6">
                                <label>Report ID: </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Report ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Report ID!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <label>User ID: </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" User ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter User ID!" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                         </div>

                           <div class="row">
                            <div class="col">
                                <label>Subject:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Subject of the report"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Subject!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                         </div>

                        <div class="row">
                            <div class="col">
                                <label>Emergency Contact:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Contact!" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Number" ControlToValidate="TextBox3" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                         </div>

                        <div class="row">
                     <div class="col">
                        <label>Add information about case</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Information Related to case" TextMode="MultiLine"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Information!" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" CssClass="alert-warning" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>

                         <div class="row">
                            <center>
                              <div class="col">
                                   <img id="imgview" style="height:150px;width:100px;" src="update_response/adminuser.png" />
                              </div>
                                 </center>
                        </div>
                   
                       <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" ID="FileUpload1" Class="form-control" runat="server" />
                            </div>
                        </div>



 <br>
                        <div class="row">
                            <div class="col">
                                <center>
                                <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Add Response" OnClick="Button2_Click"/>
                                    </center>
                            </div>
                           
                        </div>
 
 
                    </div>
                </div>
 
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
 
            <div class="col-md-7">
 
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
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epoliceDBConnectionString %>" SelectCommand="SELECT [report_id], [user_name], [user_id], [crime_place], [date_of_crime], [time], [description_of_person], [incident_in_detail], [image_proof] FROM [approved_report_tbl] WHERE ([pincode] = @pincode)">
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
