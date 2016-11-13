<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="HotelBooking.aspx.cs" Inherits="Travel_Management_System.HotelBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .page-header {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
     <div class="page-header" >
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Hotel Booking Page"></asp:Label>
        

        </h1>    
    </div>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <EditItemTemplate>
            HOTEL_NAME:
            <asp:TextBox ID="HOTEL_NAMETextBox" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
            <br />
            STREET:
            <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
            <br />
            CITY:
            <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
            <br />
            STATE:
            <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
            <br />
            PHONE1:
            <asp:TextBox ID="PHONE1TextBox" runat="server" Text='<%# Bind("PHONE1") %>' />
            <br />
            PHONE2:
            <asp:TextBox ID="PHONE2TextBox" runat="server" Text='<%# Bind("PHONE2") %>' />
            <br />
            ROOM_COST:
            <asp:TextBox ID="ROOM_COSTTextBox" runat="server" Text='<%# Bind("ROOM_COST") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            HOTEL_NAME:
            <asp:TextBox ID="HOTEL_NAMETextBox" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
            <br />
            STREET:
            <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
            <br />
            CITY:
            <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
            <br />
            STATE:
            <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
            <br />
            PHONE1:
            <asp:TextBox ID="PHONE1TextBox" runat="server" Text='<%# Bind("PHONE1") %>' />
            <br />
            PHONE2:
            <asp:TextBox ID="PHONE2TextBox" runat="server" Text='<%# Bind("PHONE2") %>' />
            <br />
            ROOM_COST:
            <asp:TextBox ID="ROOM_COSTTextBox" runat="server" Text='<%# Bind("ROOM_COST") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            HOTEL_NAME:
            <asp:Label ID="HOTEL_NAMELabel" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
            <br />
            STREET:
            <asp:Label ID="STREETLabel" runat="server" Text='<%# Bind("STREET") %>' />
            <br />
            CITY:
            <asp:Label ID="CITYLabel" runat="server" Text='<%# Bind("CITY") %>' />
            <br />
            STATE:
            <asp:Label ID="STATELabel" runat="server" Text='<%# Bind("STATE") %>' />
            <br />
            PHONE1:
            <asp:Label ID="PHONE1Label" runat="server" Text='<%# Bind("PHONE1") %>' />
            <br />
            PHONE2:
            <asp:Label ID="PHONE2Label" runat="server" Text='<%# Bind("PHONE2") %>' />
            <br />
            ROOM_COST:
            <asp:Label ID="ROOM_COSTLabel" runat="server" Text='<%# Bind("ROOM_COST") %>' />
            <br />

        </ItemTemplate>
     </asp:FormView>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT [HOTEL_NAME], [STREET], [CITY], [STATE], [PHONE1], [PHONE2], [ROOM_COST] FROM [HOTELS] WHERE ([hotel_id] = @hotel_id)">
         <SelectParameters>
             <asp:SessionParameter Name="hotel_id" SessionField="h_id" Type="Decimal" />
         </SelectParameters>
     </asp:SqlDataSource>

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
        <div class="form-group">
            <asp:Button ID="Book" runat="server" Text="Confirm and Book" OnClick="Book_Click"/>
        </div>
        

    </div>
</asp:Content>
