<%@ Page Title="" Language="C#" MasterPageFile="~/child.master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Travel_Management_System.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .container-fluid {
            background-color:white;
            border-bottom-style:double;
            width:100%;
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
       .user
       {
           background-color:lightgray;
            animation-fill-mode:both;
       }
       .hotel{
           
           background-color:lightgray;
       }
            
    </style>
   
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
        <div class="row">
            <div class="user col-md-6">
                <div class="page-header">
                    <h1>User Login</h1>
                </div>
                <div class="User_login form-horizontal">
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="l1" runat="server" Text="Email" />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="email" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="p_label" runat="server" Text="Password" />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="password" TextMode="Password" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Button ID="Button1" CssClass="btn-primary " runat="server" Text="Login" OnClick="login"/>
                        </div>
                    </div>
                    <br/>
                    <asp:Label ID="login_error" CssClass="alert-info" ForeColor="#ff3300" runat="server" Visible="False"></asp:Label>
                </div>
            </div>
            <div class="hotel col-md-6">
                <div class="page-header">
                    <h1>Hotel Login</h1>
                </div>
                <div class="hotel_login form-horizontal">
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="Label1" runat="server" Text="Email" />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox1" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="Label2" runat="server" Text="Password" />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox2" TextMode="Password" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Button ID="Button2" runat="server" Text="Login" />
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
