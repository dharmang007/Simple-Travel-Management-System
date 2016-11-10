<%@ Page Title="" Language="C#" MasterPageFile="~/child.master" AutoEventWireup="true" CodeBehind="Hotel_Registration.aspx.cs" Inherits="Travel_Management_System.Hotel_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .page-header
        {
            text-align:center;
             background-color:white ;
            
            font-size: 20px;
            color: black;
           
            padding-bottom: 30px;
             padding-left:0px;
        }  
        .container 
        {
            background-color:white;
            width: 100%;
        }      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="page-header">
            <h1>Hotel Registration
            </h1>
        </div>
        <div class="row">
            <div class="form-horizontal col-md-7">
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Hotel Name"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="name" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Street"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="street" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="city"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="city" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="State"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:dropdownlist id="state" runat="server" datasourceid="SqlDataSource1" datatextfield="State_name" datavaluefield="State_name"></asp:dropdownlist>
                    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" selectcommand="SELECT [State_name] FROM [States]"></asp:sqldatasource>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Contact Number 1"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="no1" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Contact Number 2"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="no2" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Room Cost"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="cost" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:button id="b1" runat="server" text="Register" onclick="b1_Click" />
                </div>
                <div class="col-md-3">
                    <asp:button id="b2" runat="server" text="Reset" />
                </div>
            </div>
        </div>
            <div class="col-md-5">
                <h2 style="text-align: center">Hotel Image</h2>
                <br />
                <div class="form-group">
                    <div class="col-md-8" style="align-content: center">
                        <asp:fileupload id="fu1" runat="server"></asp:fileupload>
                    </div>

                </div>
                <br />
                <asp:image id="h_pic" hieght="400px" width="500px" runat="server"></asp:image>
               
            </div>
            
        </div>
    </div>
</asp:Content>
