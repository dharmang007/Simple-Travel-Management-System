<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel.master" AutoEventWireup="true" CodeBehind="HotelCustomers.aspx.cs" Inherits="Travel_Management_System.HotelCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Hotel_header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HotelSection" runat="server">
    <div class="page-header">
    <h1>Your Customers</h1>    
    </div>
    <asp:GridView ID="GridView1" runat="server"
         AutoGenerateColumns="False"
         AutoGenerateSelectButton="True"
         DataKeyNames="id"
         DataSourceID="SqlDataSource1"
         OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        >
        <Columns>
            <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
            <asp:BoundField DataField="hotel_id" HeaderText="hotel_id" SortExpression="hotel_id" />
            <asp:BoundField DataField="PERSONS" HeaderText="PERSONS" SortExpression="PERSONS" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Total_Cost" HeaderText="Total_Cost" SortExpression="Total_Cost" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [HOTEL_BOOKING] WHERE ([hotel_id] = @hotel_id)">
        <SelectParameters>
            <asp:SessionParameter Name="hotel_id" SessionField="h_id" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br/><br />
    <h3>Customer Details</h3>
   
                Name:<asp:Label ID="fname" runat="server"></asp:Label><asp:Label ID="lname" runat="server"></asp:Label><br />     
      
                Gender:<asp:Label ID="gender" runat="server"></asp:Label>
                Address:<asp:Label ID="address" runat="server"></asp:Label>
               
        

    
    </asp:Content>
