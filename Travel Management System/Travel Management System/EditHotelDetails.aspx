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
         CssClass="auto-style1"
        
        EditRowStyle-ForeColor="Black"
        ForeColor="Black" Font-Bold="False" EditRowStyle-BackColor="White">

        <Fields>
            
            <asp:BoundField DataField="hotel_email" HeaderText="hotel_email" SortExpression="hotel_email" />
            <asp:BoundField DataField="HOTEL_NAME" HeaderText="HOTEL_NAME" SortExpression="HOTEL_NAME" />
            <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
            <asp:BoundField DataField="PHONE1" HeaderText="PHONE1" SortExpression="PHONE1" />
            <asp:BoundField DataField="PHONE2" HeaderText="PHONE2" SortExpression="PHONE2" />
            <asp:BoundField DataField="ROOM_COST" HeaderText="ROOM_COST" SortExpression="ROOM_COST" />
            <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic"  />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="hotel_id" HeaderText="hotel_id" InsertVisible="False" ReadOnly="True" SortExpression="hotel_id" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>"
         SelectCommand="SELECT * FROM [HOTELS] WHERE ([hotel_id] = @hotel_id)" DeleteCommand="DELETE FROM [HOTELS] WHERE [hotel_id] = @hotel_id" InsertCommand="INSERT INTO [HOTELS] ([hotel_email], [HOTEL_NAME], [STREET], [CITY], [STATE], [PHONE1], [PHONE2], [ROOM_COST], [pic], [password]) VALUES (@hotel_email, @HOTEL_NAME, @STREET, @CITY, @STATE, @PHONE1, @PHONE2, @ROOM_COST, @pic, @password)" UpdateCommand="UPDATE [HOTELS] SET [hotel_email] = @hotel_email, [HOTEL_NAME] = @HOTEL_NAME, [STREET] = @STREET, [CITY] = @CITY, [STATE] = @STATE, [PHONE1] = @PHONE1, [PHONE2] = @PHONE2, [ROOM_COST] = @ROOM_COST, [pic] = @pic, [password] = @password WHERE [hotel_id] = @hotel_id"
        >
        <DeleteParameters>
            <asp:Parameter Name="hotel_id" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="hotel_email" Type="String" />
            <asp:Parameter Name="HOTEL_NAME" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE" Type="String" />
            <asp:Parameter Name="PHONE1" Type="Decimal" />
            <asp:Parameter Name="PHONE2" Type="Decimal" />
            <asp:Parameter Name="ROOM_COST" Type="Decimal" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="hotel_id" SessionField="h_id" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="hotel_email" Type="String" />
            <asp:Parameter Name="HOTEL_NAME" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE" Type="String" />
            <asp:Parameter Name="PHONE1" Type="Decimal" />
            <asp:Parameter Name="PHONE2" Type="Decimal" />
            <asp:Parameter Name="ROOM_COST" Type="Decimal" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="hotel_id" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
