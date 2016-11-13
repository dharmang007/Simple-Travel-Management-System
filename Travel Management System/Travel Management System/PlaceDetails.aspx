<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="PlaceDetails.aspx.cs" Inherits="Travel_Management_System.DisplayPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        
        .auto-style1 {
            font-size: large;
            background-color: #99FF33;
        }
        .auto-style2 {
            text-align: left;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"> 
    <div class="Content">
      <asp:Image ID="pic" Width="100%" Height="310px" runat="server" /><br/>
    <h1 style="text-align:center"><asp:Label ID="city" runat="server" Text="Label"></asp:Label><br/></h1>
        <h2>
      <asp:Label ID="state" runat="server" Text="Label"></asp:Label></h2>
        <br/>
        <p class="auto-style2">
      <asp:Label BorderStyle="Double" ID="desc" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
        </p>
        <br/>


     
    </div>
    
</asp:Content>
