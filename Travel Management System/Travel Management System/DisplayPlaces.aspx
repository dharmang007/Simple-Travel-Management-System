<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="DisplayPlaces.aspx.cs" Inherits="Travel_Management_System.Places_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <asp:ListView ID="ListView1" runat="server"
        ItemType="Travel_Management_System.Place"
        GroupItemCount="3"
        HorizontalAlign="center">


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

        <ItemTemplate>
            <td runat="server" style="">city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Item.city %>' />
                <br />
                <a href="PlaceDetails.aspx?place_id=<%#Item.place_id %>">
                    <asp:Image ID="picImg" runat="server" Height="400px" Width="500px" ImageUrl='<%# Item.pic %>' /></a>
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
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Item.city %>' />
                <br />
                <a href="PlaceDetails.aspx?place_id='<%#Item.place_id %>'">
                    <asp:Image ID="picImg" runat="server" Height="300px" Width="400px" ImageUrl='<%# Item.pic %>' /></a>
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
  
    
</asp:Content>
