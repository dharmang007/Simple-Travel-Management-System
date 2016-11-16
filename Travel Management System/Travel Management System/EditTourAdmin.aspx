<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="EditTourAdmin.aspx.cs" Inherits="Travel_Management_System.EditToursAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Tour] WHERE [TOUR_ID] = @TOUR_ID" InsertCommand="INSERT INTO [Tour] ([TOUR_NAME], [PLACE], [DAYS], [PRICE], [LOCATIONS], [TOUR_INFO], [pic]) VALUES (@TOUR_NAME, @PLACE, @DAYS, @PRICE, @LOCATIONS, @TOUR_INFO, @pic)" SelectCommand="SELECT * FROM [Tour] WHERE ([TOUR_ID] = @TOUR_ID)" UpdateCommand="UPDATE [Tour] SET [TOUR_NAME] = @TOUR_NAME, [PLACE] = @PLACE, [DAYS] = @DAYS, [PRICE] = @PRICE, [LOCATIONS] = @LOCATIONS, [TOUR_INFO] = @TOUR_INFO, [pic] = @pic WHERE [TOUR_ID] = @TOUR_ID">
        <DeleteParameters>
            <asp:Parameter Name="TOUR_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TOUR_NAME" Type="String" />
            <asp:Parameter Name="PLACE" Type="String" />
            <asp:Parameter Name="DAYS" Type="Decimal" />
            <asp:Parameter Name="PRICE" Type="Decimal" />
            <asp:Parameter Name="LOCATIONS" Type="String" />
            <asp:Parameter Name="TOUR_INFO" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="TOUR_ID" QueryStringField="tour_id" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TOUR_NAME" Type="String" />
            <asp:Parameter Name="PLACE" Type="String" />
            <asp:Parameter Name="DAYS" Type="Decimal" />
            <asp:Parameter Name="PRICE" Type="Decimal" />
            <asp:Parameter Name="LOCATIONS" Type="String" />
            <asp:Parameter Name="TOUR_INFO" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="TOUR_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Height="50px" Width="125px" EditRowStyle-BackColor="White" EditRowStyle-ForeColor="Black" EmptyDataRowStyle-ForeColor="Black" EmptyDataRowStyle-BackColor="White" HorizontalAlign="Center">
        <EditRowStyle BackColor="#CCFF99" Font-Bold="True" ForeColor="Black" />

<EmptyDataRowStyle BackColor="White" ForeColor="Black"></EmptyDataRowStyle>
        <Fields>
            <asp:BoundField DataField="TOUR_ID" HeaderText="TOUR_ID" InsertVisible="False" ReadOnly="True" SortExpression="TOUR_ID" />
            <asp:BoundField DataField="TOUR_NAME" HeaderText="TOUR_NAME" SortExpression="TOUR_NAME" />
            <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
            <asp:BoundField DataField="DAYS" HeaderText="DAYS" SortExpression="DAYS" />
            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
            <asp:BoundField DataField="LOCATIONS" HeaderText="LOCATIONS" SortExpression="LOCATIONS" />
            <asp:BoundField DataField="TOUR_INFO" HeaderText="TOUR_INFO" SortExpression="TOUR_INFO" />
            <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>
</asp:Content>
