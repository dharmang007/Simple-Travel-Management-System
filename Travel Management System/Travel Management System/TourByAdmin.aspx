<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="TourByAdmin.aspx.cs" Inherits="Travel_Management_System.TourByAdmin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tour_id,AdminUsername" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Tour_id" HeaderText="Tour_id" ReadOnly="True" SortExpression="Tour_id" />
            <asp:BoundField DataField="AdminUsername" HeaderText="AdminUsername" ReadOnly="True" SortExpression="AdminUsername" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT * FROM [TourAdded] WHERE ([AdminUsername] = @AdminUsername)">
        <SelectParameters>
            <asp:SessionParameter Name="AdminUsername" SessionField="admin" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
