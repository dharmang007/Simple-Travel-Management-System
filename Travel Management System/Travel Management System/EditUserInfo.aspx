﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="EditUserInfo.aspx.cs" Inherits="Travel_Management_System.EditUserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <div class="form-horizontal">   
        <div class="form-group"> 
             <div class="control-label col-sm-4"><asp:Label ID="Label1" runat="server" Text="Email"/></div>
             <div class="col-sm-6"><asp:TextBox ID="email" runat="server" ForeColor="Black" class="form-control"/></div>
        </div>
        <div class="form-group">
             <div class="control-label col-sm-4"><asp:Label ID="Label2" runat="server" Text="First Name"/></div>
             <div class="col-sm-6"><asp:TextBox ID="fname" runat="server"  ForeColor="Black" class="form-control"/></div>                                    
        </div>
        <div class="form-group">
             <div class="control-label col-sm-4"><asp:Label ID="Label3" runat="server" Text="Last Name"/></div>
             <div class="col-sm-6"><asp:TextBox ID="lname" runat="server"  ForeColor="Black" class="form-control"/></div>
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
                 <div class="col-sm-6"><asp:TextBox ID="password1" runat="server"  ForeColor="Black" class="form-control"/></div>    
                 </div>    
        <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label6" runat="server" Text="Re-enter Password"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="password2" runat="server"  ForeColor="Black" class="form-control"/></div>
                 </div>    
        <div class="form-group">            
                    <div class="control-label col-sm-4"><asp:Label ID="Label7" runat="server" Text="Date of birth(dd-mm-yyyy)"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="dob" runat="server" TextMode="Date"  ForeColor="Black" class="form-control" Width="365px"/></div>
                </div>    
        <div class="form-group">               
                    <div class="control-label col-sm-4"><asp:Label ID="Label9" runat="server" Text="Street"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="street" runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>    
        <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label10" runat="server" Text="City"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="city" runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>    
        <div class="form-group">        
                    <div class="control-label col-sm-4"><asp:Label ID="Label11" runat="server" Text="State"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="state" runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>        
        <div class="form-group">           
                    <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="save" runat="server" Text="Save " ForeColor="Black" class="form-control" OnClick="Register_Click" /></div>
                    <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Reset" runat="server" Text="Reset"  ForeColor="Black" class="form-control"/></div>
                </div>   
            </div>
</asp:Content>