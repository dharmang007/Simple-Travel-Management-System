<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="AddTour.aspx.cs" Inherits="Travel_Management_System.AddTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-header" >
        <h1>Add New Tour</h1>    
    </div>
    <div class="row">
    <div class="form-horizontal col-md-7">
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label6"  runat="server" text="Tour_Id"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="tour_id" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="l1"  runat="server" text="Name of Tour"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="tour_name" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label1" runat="server" text="Place"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="tour_place" ForeColor="Black" class="form-control" runat="server"/>        
            </div>   
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label2" runat="server" text="Days"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="days" runat="server" TextMode="Number" ForeColor="Black" class="form-control"/>        
            </div>             
        </div>    
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label3" runat="server" text="Locations"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="locations" runat="server" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label4" runat="server" text="Price"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="price" runat="server" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label5" runat="server" text="Tour Info"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="tour_info" runat="server" TextMode="MultiLine" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
        <div class="form-group">           
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Register" ForeColor="Black" OnClick="Register_Click" /></div>
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="Reset" runat="server" Text="Reset"  ForeColor="Black"  /></div>
                </div>
    </div>
    <div class="col-md-5">   
        <p style="text-align:center; font-size:30px"; > Image for Tour</p>
        <asp:FileUpload ID="FileUpload1" Style="background-image: url('../Pics/add.png');" runat="server"/>
        <asp:Image ID="Image1" runat="server" />    
    </div> 
        </div>
    <div class="View-section">
        <h2>Info::
        <asp:Label  ID="Info" runat="server" Height="30px" Width="25%">
            </h2>
        </asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">

        </asp:GridView>
    </div>
</asp:Content>
