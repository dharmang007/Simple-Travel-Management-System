<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="TourDetails.aspx.cs" Inherits="Travel_Management_System.TourDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<style type="text/css">
            .page-header {
                text-align:center;

            }
            .form-horizontal {
                font-size: 30px;
            }
            .row .form-horizontal {
                border-right: 1px double;
            }          
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <div class="page-header" >
        <h1>
            <asp:Label ID="tourheader" runat="server" Text="Label"></asp:Label></h1>    
    </div>
        <div class="row">
    <div class="form-horizontal col-md-7">      
        <div class="form-group">
            <div class="control-label col-sm-9">
                <asp:Label id="places" runat="server"/>
            </div>   
        </div>
        <div class="form-group">
            <div class="control-label col-sm-9">
                <asp:Label id="day" runat="server"/>
            </div>
             
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="location" runat="server"/>
            </div>
                         
        </div>    
        <div class="form-group">
            <div class="control-label col-sm-3">
              <asp:Label id="price_label" runat="server" text="Price" />
            </div>
            <div class="col-sm-6">
                <asp:Label ID="price_field" runat="server" Text="Label"></asp:Label>
            </div> 
               
        </div>
        
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label ID="info" runat="server" ></asp:Label>
            </div>
            
        </div>
        <div class="form-group">           
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Book now" ForeColor="Black"  /></div>
                    
        </div>
    </div>
    <div class="col-md-5">   
         
    </div> 
        </div>

</asp:Content>
