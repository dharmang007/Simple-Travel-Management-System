<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Travel_Management_System.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .nav{
            background-color:black;

        }    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="nav">
        
            <ul class="nav navbar-nav navbar-left" >
                <li><a href="#"><span class="glyphicons glyphicons-home"></span>Home</a></li>
                <li><a href="DisplayTours.aspx">Tours</a></li>  
                <li><a href="#">Hotels</a></li> 
                <li><a href="#">Places</a></li>               
                
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="userlogin.aspx">Login</a></li>
                <li><a href="SignUpForm.aspx"><span class="glyphicons glyphicons-user-add"></span></span>Profile</a></li>
            </ul>    
            
       
            <br />
            <br />
            
       
        </div>
    <div class="tours container-fluid">
           </div>
    <div  class="container-fluid">

    </div>
</asp:Content>
