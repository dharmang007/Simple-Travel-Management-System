<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travel_Management_System.Profile" %>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .UserInfoTable {
            font-size:24px;
        }     
        
    </style>

</asp:Content>

<asp:Content ID="con1" ContentPlaceHolderID="UserProfileContent" runat="server">
    
    
    <asp:DetailsView ID="DetailsView1" runat="server" HorizontalAlign="Center" Height="50px" Width="70%" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Horizontal">
        <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
        <EmptyDataRowStyle BackColor="White" ForeColor="Black" />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:DetailsView>

      
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EntityTypeName="" Select="new (Email, FirstName, LastName, Gender, dob, Street, City, State)" TableName="UserInfos" Where="Email == @Email">
            <WhereParameters>
                <asp:SessionParameter DefaultValue="null" Name="Email" SessionField="email" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
    

      
   
                                                    
                        
    
</asp:Content>