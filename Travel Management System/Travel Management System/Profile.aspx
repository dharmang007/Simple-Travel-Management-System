<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travel_Management_System.Profile" %>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .UserInfoTable {
            font-size:24px;
        }     
        
    </style>

</asp:Content>

<asp:Content ID="con1" ContentPlaceHolderID="UserProfileContent" runat="server">
    
    <p><h1>Welcome </p><asp:Label ID="l1"  runat="server" Visible="False" />
    <div class="UserInfoTable">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="LinqDataSource1">
            <Fields>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" ReadOnly="True" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" ReadOnly="True" SortExpression="LastName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" ReadOnly="True" SortExpression="Gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" ReadOnly="True" SortExpression="dob" />
                <asp:BoundField DataField="Street" HeaderText="Street" ReadOnly="True" SortExpression="Street" />
                <asp:BoundField DataField="City" HeaderText="City" ReadOnly="True" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" ReadOnly="True" SortExpression="State" />
            </Fields>
        </asp:DetailsView>
    

      
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EntityTypeName="" Select="new (Email, FirstName, LastName, Gender, dob, Street, City, State)" TableName="UserInfos" Where="Email == @Email">
            <WhereParameters>
                <asp:SessionParameter DefaultValue="null" Name="Email" SessionField="email" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
    

      
    </div>
                                                    
                        
    
</asp:Content>