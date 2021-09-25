<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="E_Police.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/homi2.jpg" class="w-100 img-fluid" />
    </section>
    <br/>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center><h2 style="color:white;">OUR FEATURES</h2></center>
                </div>
            </div>

       
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <center>
                  <h1 style="font-size:100px;"><i class="fas fa-file-invoice"></i></h1>
                  <h4>File Complaint</h4>
                
                  <b><p class="text-justify">User can file complaints about any illegal activities happening in their surounding without actually having to visit Police Station. FIR can be easily done on this platform.</p>
               </b></center>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <center>
                   <h1 style="font-size:100px; "><i class="fas fa-chalkboard-teacher"></i></h1>
                  <h4>Report Progess</h4>
                  
                  <b><p class="text-justify">User can track progress of each and every complaints and also can see the progress report updated by the respective officer whenever they want.</p>
               </b></center>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ">
                <div class="card">
                    <div class="card-body" style="background-color: white">
                        <center>
                  <h1 style="font-size:100px;"><i class="far fa-id-badge"></i></h1>
                  <h4>Missing Report</h4>
                 
                 <b> <p class="text-justify">User can file report about missing person with thier ID proof and credentials and can also view/give information about nearby missing persons.</p>
               </b></center>
                    </div>
                </div>

            </div>
            <br>
            <br>
        </div>
            </div>
        
    </section>
</asp:Content>
