<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travel_Management_System.Profile" %>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .UserInfoTable {
            font-size:24px;
        }     
        
    </style>

</asp:Content>

<asp:Content ID="con1" ContentPlaceHolderID="UserProfileContent" runat="server">
    
    
    <asp:DetailsView ID="DetailsView1" runat="server" HorizontalAlign="Center" Height="50px" Width="70%" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1">
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    </asp:DetailsView>

      
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EntityTypeName="" Select="new (Email, FirstName, LastName, Gender, dob, Street, City, State)" TableName="UserInfos" Where="Email == @Email">
            <WhereParameters>
                <asp:SessionParameter DefaultValue="null" Name="Email" SessionField="email" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
    

      
   
                                                    
                        
    
</asp:Content>