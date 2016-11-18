<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Travel_Management_System.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .page-header{
            text-align:center;

        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <ul class="nav navbar nav-tabs">
         <li class="pull-left"><a href="AdminProfile.aspx"> Profile </a></li>
         <li class="pull-left"><a href="AddTour.aspx"> Add Tours</a></li>
         <li class="pull-left"><a href="Add_Place.aspx"> Add Places</a></li>
         <li class="pull-left"><a href="PlaceByAdmin.aspx">Places Added by you</a></li>
         <li class="pull-left"><a href="TourByAdmin.aspx">Tours Added by you</a></li>
       
        
    </ul>
   <div class="page-header">
       <h1>
           Welcome to the Admin Section 
       </h1>
       <p>
           You can manage the admin work here.<br/>
           You can add tours and places for customers.
           

       </p>
   </div>
</asp:Content>
