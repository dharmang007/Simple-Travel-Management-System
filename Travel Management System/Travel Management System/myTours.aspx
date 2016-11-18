<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="myTours.aspx.cs" Inherits="Travel_Management_System.myTours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .page-header{
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
     <div class="page-header">
        <h1>Your Tours</h1>
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server"
         AutoGenerateColumns="False"
         DataKeyNames="Booking_id"
         DataSourceID="LinqDataSource1"
         HorizontalAlign="Center"
       >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Booking_id" HeaderText="Booking_id" InsertVisible="False" ReadOnly="True" SortExpression="Booking_id" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Tour_id" HeaderText="Tour_id" SortExpression="Tour_id" />
            <asp:BoundField DataField="No_of_persons" HeaderText="No_of_persons" SortExpression="No_of_persons" />
            <asp:BoundField DataField="Total_cost" HeaderText="Total_cost" SortExpression="Total_cost"/>                    
        </Columns>
       
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Tour_bookings" Where="Email == @Email">
        <WhereParameters>
            <asp:SessionParameter Name="Email" SessionField="email" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
    <br />
    <h3></h3>
</asp:Content>