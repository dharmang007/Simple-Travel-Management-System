<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="EditPlaceAdmin.aspx.cs" Inherits="Travel_Management_System.EditPlaceAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="place_id" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#CCFF99" Font-Bold="True" ForeColor="Black" />
        <Fields>
            <asp:BoundField DataField="place_id" HeaderText="place_id" InsertVisible="False" ReadOnly="True" SortExpression="place_id" />
            <asp:BoundField DataField="city" HeaderText="city" InsertVisible="false" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" InsertVisible="false" SortExpression="state" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Place] WHERE [place_id] = @place_id" InsertCommand="INSERT INTO [Place] ([city], [state], [description], [pic]) VALUES (@city, @state, @description, @pic)" SelectCommand="SELECT * FROM [Place] WHERE ([place_id] = @place_id)" UpdateCommand="UPDATE [Place] SET [city] = @city, [state] = @state, [description] = @description, [pic] = @pic WHERE [place_id] = @place_id">
        <DeleteParameters>
            <asp:Parameter Name="place_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="place_id" QueryStringField="place_id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String"  />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="place_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
