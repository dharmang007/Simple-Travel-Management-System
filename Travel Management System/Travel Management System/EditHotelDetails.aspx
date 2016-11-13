<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel.master" AutoEventWireup="true" CodeBehind="EditHotelDetails.aspx.cs" Inherits="Travel_Management_System.EditHotelDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Hotel_header" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HotelSection" runat="server">
    <asp:DetailsView ID="DetailsView1"
         runat="server" Height="50px"
         Width="343px"
         AutoGenerateEditButton="True" 
        AutoGenerateRows="False"
         DataKeyNames="hotel_id"
         DataSourceID="SqlDataSource1"
         CssClass="auto-style1">

        <Fields>
            
            <asp:BoundField DataField="hotel_email" HeaderText="hotel_email" SortExpression="hotel_email" />
            <asp:BoundField DataField="HOTEL_NAME" HeaderText="HOTEL_NAME" SortExpression="HOTEL_NAME" />
            <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
            <asp:BoundField DataField="PHONE1" HeaderText="PHONE1" SortExpression="PHONE1" />
            <asp:BoundField DataField="PHONE2" HeaderText="PHONE2" SortExpression="PHONE2" />
            <asp:BoundField DataField="ROOM_COST" HeaderText="ROOM_COST" SortExpression="ROOM_COST" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="hotel_id" HeaderText="hotel_id" InsertVisible="False" ReadOnly="True" SortExpression="hotel_id" />
            <asp:ImageField DataImageUrlField="pic" ReadOnly="true">
                <ItemStyle Height="400px" Width="500px" />
            </asp:ImageField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT * FROM [HOTELS] WHERE ([hotel_id] = @hotel_id)">
        <SelectParameters>
            <asp:SessionParameter Name="hotel_id" SessionField="h_id" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
