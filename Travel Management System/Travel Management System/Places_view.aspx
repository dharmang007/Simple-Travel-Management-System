<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="Places_view.aspx.cs" Inherits="Travel_Management_System.Places_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="LinqDataSource1" GroupItemCount="3" >
        <AlternatingItemTemplate>
            <td runat="server" style="">pic:
                <asp:ImageButton ID="picImg" runat="server" Height="300px" Width="400px" ImageUrl='<%# Eval("pic") %>'  OnClick="picImg_Click" />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">pic:
                <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">pic:
                <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">pic:
                <asp:ImageButton ID="picImg" runat="server" Height="300px" Width="400px" ImageUrl='<%# Eval("pic") %>'  OnClick="picImg_Click" />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">pic:
                <asp:ImageButton ID="picImg" runat="server"
                     Height="300px" Width="400px"
                     ImageUrl='<%# Eval("pic") %>' 
                    OnClick="picImg_Click"
                   />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EntityTypeName="" Select="new (pic, city)" TableName="Places">
    </asp:LinqDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
