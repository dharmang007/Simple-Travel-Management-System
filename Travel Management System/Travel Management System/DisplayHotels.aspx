<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="DisplayHotels.aspx.cs" Inherits="Travel_Management_System.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <section id="Display">
        <div class="container-fluid">
            
            
            Find from place:<asp:DropDownList ID="DropDownList1" runat="server"
                 AutoPostBack="True"
                 DataSourceID="SqlDataSource1" 
                DataTextField="STATE"
                 DataValueField="STATE"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                 ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>"
                 SelectCommand="SELECT DISTINCT [STATE] FROM [HOTELS]">

            </asp:SqlDataSource>
           
             <asp:ListView ID="ListView1" runat="server" GroupItemCount="3"
        DataKeyNames="hotel_id"
        ItemType="Travel_Management_System.HOTEL"            
        >


        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
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

            <td runat="server" style="background-color: #E0FFFF; color: #333333;">
                <div class="content">
                    <asp:Label ID="headerLabel" runat="server" Text='<%# Item.HOTEL_NAME %>' />
                </div>
                <a href="HotelDetails.aspx?hotel_id=<%#Item.hotel_id %>">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.pic %>' Width="400px" Height="400px" />
                </a>
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                 <!--       <asp:DataPager ID="DataPager1" runat="server" PageSize="100">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>-->
                    </td>
                </tr>
            </table>
        </LayoutTemplate>


    </asp:ListView>
                 
            
            <br />
                       
           

         </div>   
                
    </section>
</asp:Content>
