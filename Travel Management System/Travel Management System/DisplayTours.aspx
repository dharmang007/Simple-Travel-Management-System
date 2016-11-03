﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="DisplayTours.aspx.cs" Inherits="Travel_Management_System.DisplayTours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        ListView1 li{
            display:grid;
        }            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="287px">
        <Columns>
           <!-- The Info field-->
            <asp:TemplateField>
                  <ItemTemplate>
                      <asp:HyperLink ID="HyperLink1" runat="server">

                      </asp:HyperLink>
                  </ItemTemplate>  
            </asp:TemplateField>
            
             
            <asp:TemplateField>
               <!-- Image Field -->
                <ItemTemplate>
                    <asp:Image ID="Image1" ImageUrl='<%# Bind("pic") %>'  runat="server" Height="400px" Width="400px" />
                </ItemTemplate>
            </asp:TemplateField>
            
             
        </Columns>
    </asp:GridView>

    <br />
    
    <asp:ListView ID="ListView1" runat="server" DataSourceID="LinqDataSource1" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF;color: #284775;">pic:
                <asp:Label ID="picLabel" runat="server" Text='<%# Eval("pic") %>' />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">pic:
                <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF;color: #333333;">pic:
                <asp:Label ID="picLabel" runat="server" Text='<%# Eval("pic") %>' />
                <asp:Image ID="Image2"  runat="server"  ImageUrl='<%# Eval("pic")%>' Height="100px" Width="100px" />
                <br /></td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
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
            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">pic:
                <asp:Label ID="picLabel" runat="server" Text='<%# Eval("pic") %>' />
                <br /></td>
        </SelectedItemTemplate>
   
    </asp:ListView>
    

    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EntityTypeName="" Select="new (pic)" TableName="Tours">
    </asp:LinqDataSource>
    

</asp:Content>
