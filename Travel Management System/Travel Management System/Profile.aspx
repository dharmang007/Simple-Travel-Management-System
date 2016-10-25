<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travel_Management_System.Profile" %>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .UserInfoTable {
            font-size:24px;
        }     
        
    </style>

</asp:Content>

<asp:Content ID="con1" ContentPlaceHolderID="UserProfileContent" runat="server">
    
    <p><h1>Welcome </p><asp:Label ID="l1" runat="server"/>
    <div class="UserInfoTable"><br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">

        </asp:GridView>

     
 
    </div>
                                                    
                        
    
</asp:Content>