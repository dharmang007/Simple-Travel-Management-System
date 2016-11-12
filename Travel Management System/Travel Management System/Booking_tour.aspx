<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="Booking_tour.aspx.cs" Inherits="Travel_Management_System.Booking_tour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .page-header{
            text-align:center;
        }
        .tour_details{
            align-content:center;
            align-items:center;
            
            text-align:center;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <div class="page-header" >
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Hotel Booking Page"></asp:Label>
        

        </h1>    
    </div>
    <div class="tour_details">
       
        <asp:FormView ID="FormView1" HorizontalAlign="Center" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <EditItemTemplate>
                TOUR_NAME:
                <asp:TextBox ID="TOUR_NAMETextBox" runat="server" Text='<%# Bind("TOUR_NAME") %>' />
                <br />
                DAYS:
                <asp:TextBox ID="DAYSTextBox" runat="server" Text='<%# Bind("DAYS") %>' />
                <br />
                PLACE:
                <asp:TextBox ID="PLACETextBox" runat="server" Text='<%# Bind("PLACE") %>' />
                <br />
                PRICE:
                <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                <br />
                LOCATIONS:
                <asp:TextBox ID="LOCATIONSTextBox" runat="server" Text='<%# Bind("LOCATIONS") %>' />
                <br />
                TOUR_INFO:
                <asp:TextBox ID="TOUR_INFOTextBox" runat="server" Text='<%# Bind("TOUR_INFO") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                TOUR_NAME:
                <asp:TextBox ID="TOUR_NAMETextBox" runat="server" Text='<%# Bind("TOUR_NAME") %>' />
                <br />
                DAYS:
                <asp:TextBox ID="DAYSTextBox" runat="server" Text='<%# Bind("DAYS") %>' />
                <br />
                PLACE:
                <asp:TextBox ID="PLACETextBox" runat="server" Text='<%# Bind("PLACE") %>' />
                <br />
                PRICE:
                <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                <br />
                LOCATIONS:
                <asp:TextBox ID="LOCATIONSTextBox" runat="server" Text='<%# Bind("LOCATIONS") %>' />
                <br />
                TOUR_INFO:
                <asp:TextBox ID="TOUR_INFOTextBox" runat="server" Text='<%# Bind("TOUR_INFO") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                TOUR_NAME:
                <asp:Label ID="TOUR_NAMELabel" runat="server" Text='<%# Bind("TOUR_NAME") %>' />
                <br />
                DAYS:
                <asp:Label ID="DAYSLabel" runat="server" Text='<%# Bind("DAYS") %>' />
                <br />
                PLACE:
                <asp:Label ID="PLACELabel" runat="server" Text='<%# Bind("PLACE") %>' />
                <br />
                PRICE:
                <asp:Label ID="PRICELabel" runat="server" Text='<%# Bind("PRICE") %>' />
                <br />
                LOCATIONS:
                <asp:Label ID="LOCATIONSLabel" runat="server" Text='<%# Bind("LOCATIONS") %>' />
                <br />
                TOUR_INFO:
                <asp:Label ID="TOUR_INFOLabel" runat="server" Text='<%# Bind("TOUR_INFO") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:FormView>
           
    </div>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="control-label col-md-6">
                <asp:Label runat="server" id="l1" text="Enter the No. of person"></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:DropDownList id="no_of_person" 
                    class="form-control" 
                    runat="server"
                     AutoPostBack="True" 
                    OnSelectedIndexChanged="no_of_person_SelectedIndexChanged"
                    Width="233px"></asp:DropDownList>
            </div>
        </div>    
        <div class="form-group">
            <div class="control-label col-md-6">
                <asp:Label id="l2" runat="server" text="Total Cost"></asp:Label>
            </div>   
            <div class="col-md-6">
                <asp:Label id="cost" runat="server" text=""></asp:Label>
            </div> 
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT [TOUR_NAME], [DAYS], [PLACE], [PRICE], [LOCATIONS], [TOUR_INFO] FROM [Tour] WHERE ([TOUR_NAME] = @TOUR_NAME)">
            <SelectParameters>
                <asp:SessionParameter Name="TOUR_NAME" SessionField="t_name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
