<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="PlaceByAdmin.aspx.cs" Inherits="Travel_Management_System.TourByAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False"
         DataKeyNames="place_id,AdminUsername" 
        DataSourceID="SqlDataSource1"
         OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="place_id" HeaderText="place_id" ReadOnly="True" SortExpression="place_id" />
            <asp:BoundField DataField="AdminUsername" HeaderText="AdminUsername" ReadOnly="True" SortExpression="AdminUsername" />
        </Columns>
    </asp:GridView>
    <h1>Place Name</h1>
    <asp:Label ID="PlaceName" runat="server" Text=""></asp:Label>
    <asp:Label ID="desc" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT * FROM [PlaceAdded] WHERE ([AdminUsername] = @AdminUsername)">
        <SelectParameters>
            <asp:SessionParameter Name="AdminUsername" SessionField="admin" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



</asp:Content>
