﻿<%@ Page Title="" Language="C#" MasterPageFile="~/child.master" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="Travel_Management_System.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .container {
            text-align: center;
            background-color: black;
            width: 75%;
            font-size: 30px;
            color: white;
            padding-bottom:150px;
            opacity:0.8;
        }
        

   </style>

</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br/>
     <br/>

     <div class="container" >
        <div class="page-header">
                <h1>User Registration Form </h1>
        </div>
        <div class="form-horizontal">   
        <div class="form-group"> 
             <div class="control-label col-sm-4"><asp:Label ID="Label1" runat="server" Text="Email"/></div>
             <div class="col-sm-6"><asp:TextBox ID="email" TextMode="Email" runat="server" required="true" ForeColor="Black" class="form-control"/></div>
        </div>
        <div class="form-group">
             <div class="control-label col-sm-4"><asp:Label ID="Label2" runat="server" Text="First Name"/></div>
             <div class="col-sm-6"><asp:TextBox ID="fname" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>                                    
        </div>
        <div class="form-group">
             <div class="control-label col-sm-4"><asp:Label ID="Label3" runat="server" Text="Last Name"/></div>
             <div class="col-sm-6"><asp:TextBox ID="lname" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>
            </div>
        <div class="form-group">
             <div class="control-label col-sm-4"><asp:Label ID="Label4" runat="server" Text="Gender"/></div>
              <div class="col-sm-6">  
                    <asp:DropDownList ID="gender" runat="server" Width="361px" ForeColor="Black" class="form-control">
                        <asp:ListItem Text="Male"></asp:ListItem>
                        <asp:ListItem Text="Female"></asp:ListItem>
                        <asp:ListItem Text="Trans"></asp:ListItem>
                    </asp:DropDownList>
              </div>
            </div>    
        <div class="form-group">
                <div class="control-label col-sm-4"><asp:Label ID="Label5" runat="server" Text="Enter Password"/></div>
                 <div class="col-sm-6"><asp:TextBox ID="password1" type="password" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>    
                 </div>    
        <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label6" runat="server" Text="Re-enter Password"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="password2" type="password" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>
                    <br /><asp:CompareValidator ID="cmp1" runat="server" ControlToValidate="password2" ControlToCompare="password1" ErrorMessage="password doesn't match" Type="String" Display="Dynamic"></asp:CompareValidator>   
              </div>
               
        <div class="form-group">            
                    <div class="control-label col-sm-4"><asp:Label ID="Label7" runat="server" Text="Date of birth(dd-mm-yyyy)"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="dob" required="true" runat="server" TextMode="Date"  ForeColor="Black" class="form-control" Width="365px"/></div>
                </div>    
        <div class="form-group">               
                    <div class="control-label col-sm-4"><asp:Label ID="Label9" runat="server" Text="Street"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="street" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>    
        <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label10" runat="server" Text="City"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="city" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>    
        <div class="form-group">        
                    <div class="control-label col-sm-4"><asp:Label ID="Label11" runat="server" Text="State"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="state" required="true" runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>        
        <div class="form-group">           
                    <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Register" ForeColor="Black" class="form-control" OnClick="Register_Click" /></div>
                    <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Reset" runat="server" Text="Reset"  ForeColor="Black" class="form-control"/></div>
                </div>   
            </div>     
     </div>
</asp:Content>
