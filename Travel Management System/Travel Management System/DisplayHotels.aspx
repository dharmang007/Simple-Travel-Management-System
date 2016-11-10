<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="DisplayHotels.aspx.cs" Inherits="Travel_Management_System.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <section id="Display">
        <div class="container-fluid">
            <asp:DropDownList ID="DropDownList1" runat="server"
                DataSourceID="SqlDataSource1" 
                DataTextField="STATE" 
                DataValueField="STATE"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString1 %>"
                SelectCommand="SELECT Distinct [STATE] FROM [HOTELS]"></asp:SqlDataSource>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3"
                ItemType="Travel_Management_System.HOTEL"
                DataKeyNames="HOTEL_ID">
                <AlternatingItemTemplate>
                    <td runat="server" style="">Hotel Name:
                        <asp:Label ID="HOTEL_NAMELabel" runat="server" Text='<%# Item.HOTEL_NAME %>' />
                        <br />
                        <asp:ImageButton ID="picImg" runat="server" Height="400px" Width="400px" ImageUrl='<%#Item.pic %>' />
                        <br /></td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">Hotel Name:
                        <asp:TextBox ID="HOTEL_NAMETextBox" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
                        <br />pic:
                        <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br /></td>
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
                    <td runat="server" style="">Hotel Name:
                        <asp:TextBox ID="HOTEL_NAMETextBox" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
                        <br />pic:
                        <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">HOTEL_NAME:
                        <asp:Label ID="HOTEL_NAMELabel" runat="server" Text='<%# Item.HOTEL_NAME %>' />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="400px" Width="400px" ImageUrl='<%#Item.pic %>' />
                        <asp:ImageButton ID="picImg" runat="server" Height="400px" Width="400px" ImageUrl='<%# Eval("pic") %>' />
                        <br /></td>
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
                    <td runat="server" style="">HOTEL_NAME:
                         <asp:Label ID="HOTEL_NAMELabel" runat="server" Text='<%# Item.HOTEL_NAME %>' />
                        <br />                      
                         <asp:ImageButton ID="picImg" runat="server" Height="400px" Width="400px" ImageUrl='<%#Item.pic %>' />                        
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT [HOTEL_NAME], [pic] FROM [HOTELS]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="STATE" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           
         </div>   
                
    </section>
</asp:Content>
