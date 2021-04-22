﻿<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="termtotalcollection.aspx.cs" Inherits="InsuranceHub.termtotalcollection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="sc" runat="server"></asp:ScriptManager>

<div class="wrapper">
   <div class="content-wrapper">
      <section class="content-header">
      <div class="header-icon">
         <i class="pe-7s-note2"></i>
      </div>
      <div class="header-title">
         <div  class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
            <div class="input-group">
               <input type="text" name="q" class="form-control" placeholder="Search...">
               <span class="input-group-btn">
               <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
               </span>
            </div>
         </div>
         <h1>Total Collection</h1>
         <small>Total Collection Report</small>
         <ol class="breadcrumb hidden-xs">
            <li><a><i class="pe-7s-home"></i> Home</a></li>
            <li class="active">Dashboard</li>
         </ol>
      </div>
   </section>

           <!--filter content-->
                <div class="filter-content">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-body"> 
                            
                            <div class="col-sm-2 form-group">
                                    <label>Policy No</label>
               <asp:TextBox ID="pno" class="form-control"  runat="server" placeholder="Policy Number"></asp:TextBox>

                                </div> 
                               <div class="col-sm-3 form-group">
                                    <label>From</label>
                 
               <asp:TextBox ID="from" class="form-control" type="date" runat="server" placeholder="Start Date"></asp:TextBox>

                                </div> 

                               <div class="col-sm-3 form-group">
                                    <label>To</label>
               <asp:TextBox ID="to" name="end_date" class="form-control" type="date" placeholder="End Date" runat="server"></asp:TextBox>
                                 
                                </div>  
                                
                               <div class="col-sm-2 form-group">
                                    <label>Mobile No.</label>
               <asp:TextBox ID="mno" class="form-control" placeholder="Mobile Number" runat="server"></asp:TextBox>
                                 
                                </div>  

                                 <div class="col-sm-1 form-group">
                                 <label>&nbsp;</label>
                                
                           
               <asp:LinkButton ID="search" class="btn btn-success"  runat="server" onclick="search_Click">Filter</asp:LinkButton>

                          
                                </div>
                           
                        </div>
                    </div>
                </div>



                 
                <!-- Main content -->
     
                                <section class="content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-body">

                                 <asp:LinkButton ID="pdf" OnClick="pdf_Click" runat="server" class="btn btn-success"><i class="fa fa-file"></i> PDF</asp:LinkButton>
                                 <asp:LinkButton ID="excel" runat="server" OnClick="excel_Click" class="btn btn-success"><i class="ti-agenda"></i> EXCEL</asp:LinkButton>
                                <asp:UpdatePanel ID="rp" runat="server" UpdateMode="conditional"> 
                                <ContentTemplate>
                                
                                     <div class="table-responsive">
                           <table class="table table-bordered table-hover">
                              <fieldset>
                                 <asp:Repeater ID="rpt" runat="server">
                                    <HeaderTemplate>
                                       <table id="example1" class="table table-bordered table-striped">
                                          <tr>
                                          <th>Policy No
                                             </th>
                                             <th>Name
                                             </th>
                                             <th>Gender
                                             </th>
                                             <th>Lifestage
                                             </th>
                                             <th>BirthDay
                                             </th>
                                             <th>Mobile No.
                                             </th>
                                             <th>Education
                                             </th>
                                             <th>Smoke
                                             </th>
                                              <th>Income
                                             </th>
                                               <th>Occupation
                                             </th>
                                               <th>Address
                                             </th>
                                             <th>Amount
                                             </th>
                                               <th>Payment Due
                                             </th>
                                             <th>Print
                                             </th>
                                          </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <tr>
             
                                    <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("policy_no") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl0" runat="server" Text='<%# Eval("clientname") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl1" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl2" runat="server" Text='<%# Eval("lifestage") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl3" runat="server" Text='<%# Eval("bday") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("education") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("smoke") %>'></asp:Label>
                                    
                                    </td>
                                    <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("income") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("occupation") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("date","{0:MM/dd/yyyy}")  %>'></asp:Label>
                                    </td>
                                      <td>
                                      <div class="panel-footer text-left">
                                    
                                
                                       <asp:LinkButton ID="print" OnClick="print_Click" CommandArgument='<%# Eval("id") %>' class="btn btn-info" runat="server"><span class="fa fa-print"></span></asp:LinkButton>
                                  
                                    </div>
                                    </td>
                                
                                    </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </table>
                                    </FooterTemplate>
                                 </asp:Repeater>
                              </fieldset>
                           </table>
                        </div>
                        </ContentTemplate></asp:UpdatePanel>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </section> 



   </div>
   </div>
</asp:Content>
