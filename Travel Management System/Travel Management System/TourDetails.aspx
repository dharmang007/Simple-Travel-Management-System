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
            .row .panel-info{
                background-color:black;
            }         
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    
    <asp:FormView ID="FormView1" runat="server"
        ItemType="Travel_Management_System.Tour" 
        SelectMethod="TourDetails_GetItem">
        <ItemTemplate>
            <div class="row">
            <div class="col-md-6">
                <asp:Image ID="Image1" ImageUrl="<%#Item.pic %>" runat="server" Height="400px" Width="400px" />     
            </div>
            <div class="form col-md-6">      
            <div class="form-group">
                <div class="control-label">
                    <asp:Label id="l1"  runat="server" text="<%# Item.PLACE %>"/>
                </div>    
            </div>
            <div class="form-group">
                <div class="control-label">
                    <asp:Label id="Label4" runat="server" text="<%# Item.LOCATIONS %>"/>
                </div>              
            </div>
            <div class="form-group">
                <div class="control-label">
                    <asp:Label id="Label5" runat="server" text="<%# Item.DAYS %>"/>
                </div>                   
            </div>    
            <div class="form-group">
                <div class="control-label">
                    <asp:Label id="Label6" runat="server" text="<%# Item.PRICE %>"/>
                </div>
             
        </div>        
        <div class="form-group">           
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="BookNow" runat="server" Text="Book Now" ForeColor="Black"/></div>
                    
        </div>
    </div>
             </div>
            
                   
        </ItemTemplate>

    </asp:FormView>
   

</asp:Content>
