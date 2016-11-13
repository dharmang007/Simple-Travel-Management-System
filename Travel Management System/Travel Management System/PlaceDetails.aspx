<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="PlaceDetails.aspx.cs" Inherits="Travel_Management_System.DisplayPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="place_id" DataSourceID="LinqDataSource1" Height="50px" Width="163px" AutoGenerateEditButton="True" Font-Size="Medium" >
        <Fields>
            
            <asp:BoundField DataField="place_id" HeaderText="place_id" InsertVisible="False" ReadOnly="True" SortExpression="place_id" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
              

            <asp:ImageField DataImageUrlField="pic" ControlStyle-Height="500px" ControlStyle-Width="500px">
            </asp:ImageField>

        </Fields>
    </asp:DetailsView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EntityTypeName="" TableName="Places" EnableUpdate="True">
    </asp:LinqDataSource>
    
</asp:Content>
