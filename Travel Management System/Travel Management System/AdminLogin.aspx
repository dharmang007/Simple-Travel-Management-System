<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Travel_Management_System.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .page-header {
            text-align:center;
        }

            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-header">
        <h1>Admin Login</h1>    
    </div>
   <div class="Admin_login form-horizontal">
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="l1" runat="server" Text="Useranme" />
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="uname" ForeColor="Black" class="form-control" runat="server" />
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
                           <asp:Button ID="Button1" CssClass="btn-primary " runat="server" Text="Login"/>
                        </div>
                    </div>
                    <br/>
                    <asp:Label ID="login_error" CssClass="alert-info" ForeColor="#ff3300" runat="server" Visible="False"></asp:Label>
                </div>
            

</asp:Content>
