<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Add_Place.aspx.cs" Inherits="Travel_Management_System.Add_Place" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style type="text/css">
    .page-header{
        text-align:center;
       
    }
    .row{
        font-size:medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="navbar pull-right"> 
    <a href="#">Logout</a>
    </div>
    <div class="page-header">
        <h1>Add Place</h1>    
    </div>
    <div class="row">
       
        <div class="form-horizontal col-md-6">
                <div class="form-group">
                    <div class="col-md-3 control-label">
                        <asp:Label ID="Label1" runat="server" Text="City"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="city" class="form-control" runat="server"></asp:TextBox>   
                    </div>                    
                </div>
                <div class="form-group">
                    <div class="col-md-3 control-label">
                        <asp:Label ID="Label2" runat="server" Text="State"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList1" class="from-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="State_name" DataValueField="State_name"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT [State_name] FROM [States]"></asp:SqlDataSource>
                    </div>                    
                </div>
                <div class="form-group">
                    <div class="col-md-3 control-label">
                        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                    </div>
                    <div class="col-md-6" >
                        <asp:TextBox ID="desc" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>   
                    </div>                    
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/>
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" />  
                    </div>                    
                </div>
                    
            
        </div>
        <div class="col-md-3">
            <asp:FileUpload ID="city_pic" runat="server" /><br/>
            
            <asp:Image ID="Image1" Height="400px" Width="500px" runat="server"/>
        </div>
        

    </div>
</asp:Content>
