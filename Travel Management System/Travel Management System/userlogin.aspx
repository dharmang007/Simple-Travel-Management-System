<%@ Page Title="" Language="C#" MasterPageFile="~/child.master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Travel_Management_System.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .container-fluid {
            background-color:white;
            border-bottom-style:double;
            width:60%;
            align-content:center;
        }
        .container-fluid .login{
            background-color:azure;
            
            font-size:medium;
            align-items:center;

        }
        .form-horizontal {
                font-size: 30px;
            }
       .page-header {
                text-align:center;

            }
            .row .form-horizontal {
                border-right: 1px double;
            } 
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
       <div class="page-header" >
        <h1>User Login</h1>    
        </div>
       <div class="login form-horizontal">            
        <div class="form-group row">
            <div class="control-label col-sm-3">
                <asp:Label id="l1"  runat="server" text="Email"/>
            </div>
            <div class="col-sm-4">
                <asp:TextBox id="email" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div> 
           <div class="form-group row">
            <div class="control-label col-sm-3">
                <asp:Label id="password_label"  runat="server" text="Password"/>
            </div>
            <div class="col-sm-4">
                <asp:TextBox id="password" TextMode="Password" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>   
           <div class="form-group row"  >
            <div class="control-label col-sm-3">
                <asp:Button ID="Button1" runat="server" Text="Login" />
               </div> 
        </div>    
    </div>
        </div>
    <div class="2 container-fluid">
        <div class="page-header" >
        <h1>Hotel Login</h1>    
        </div>
    </div>
</asp:Content>
