<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel.master" AutoEventWireup="true" CodeBehind="HotelProfile.aspx.cs" Inherits="Travel_Management_System.HotelProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Hotel_header" runat="server">
    <style type="text/css">
    .page-header{
        text-align:center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HotelSection" runat="server">
    <div class="page-header">
    <h1>Hotel Profile</h1>
        <p>
            
            Welcome to your workspace<br />
            You can edit and see the customers booked in your hotel</p>
        <p>
            
            &nbsp;</p>
        <p>
            
            <br/>
            <asp:FormView ID="FormView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" HorizontalAlign="Center" Font-Size="Large" Font-Bold="True">
                <EditItemTemplate>
                    Email:
                    <asp:TextBox ID="hotel_emailTextBox" runat="server" Text='<%# Bind("hotel_email") %>' />
                    <br />
                    HOTEL NAME:
                    <asp:TextBox ID="HOTEL_NAMETextBox" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
                    <br />
                    STREET:
                    <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                    <br />
                    CITY:
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    <br />
                    STATE:
                    <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
                    <br />
                    PHONE1:
                    <asp:TextBox ID="PHONE1TextBox" runat="server" Text='<%# Bind("PHONE1") %>' />
                    <br />
                    PHONE2:
                    <asp:TextBox ID="PHONE2TextBox" runat="server" Text='<%# Bind("PHONE2") %>' />
                    <br />
                    ROOM_COST:
                    <asp:TextBox ID="ROOM_COSTTextBox" runat="server" Text='<%# Bind("ROOM_COST") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <InsertItemTemplate>
                    hotel_email:
                    <asp:TextBox ID="hotel_emailTextBox" runat="server" Text='<%# Bind("hotel_email") %>' />
                    <br />
                    HOTEL_NAME:
                    <asp:TextBox ID="HOTEL_NAMETextBox" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
                    <br />
                    STREET:
                    <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                    <br />
                    CITY:
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    <br />
                    STATE:
                    <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
                    <br />
                    PHONE1:
                    <asp:TextBox ID="PHONE1TextBox" runat="server" Text='<%# Bind("PHONE1") %>' />
                    <br />
                    PHONE2:
                    <asp:TextBox ID="PHONE2TextBox" runat="server" Text='<%# Bind("PHONE2") %>' />
                    <br />
                    ROOM_COST:
                    <asp:TextBox ID="ROOM_COSTTextBox" runat="server" Text='<%# Bind("ROOM_COST") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    hotel_email:
                    <asp:Label ID="hotel_emailLabel" runat="server" Text='<%# Bind("hotel_email") %>' />
                    <br />
                    HOTEL_NAME:
                    <asp:Label ID="HOTEL_NAMELabel" runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
                    <br />
                    STREET:
                    <asp:Label ID="STREETLabel" runat="server" Text='<%# Bind("STREET") %>' />
                    <br />
                    CITY:
                    <asp:Label ID="CITYLabel" runat="server" Text='<%# Bind("CITY") %>' />
                    <br />
                    STATE:
                    <asp:Label ID="STATELabel" runat="server" Text='<%# Bind("STATE") %>' />
                    <br />
                    PHONE1:
                    <asp:Label ID="PHONE1Label" runat="server" Text='<%# Bind("PHONE1") %>' />
                    <br />
                    PHONE2:
                    <asp:Label ID="PHONE2Label" runat="server" Text='<%# Bind("PHONE2") %>' />
                    <br />
                    ROOM_COST:
                    <asp:Label ID="ROOM_COSTLabel" runat="server" Text='<%# Bind("ROOM_COST") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
              
            </asp:FormView>

            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString1 %>" SelectCommand="SELECT [hotel_email], [HOTEL_NAME], [STREET], [CITY], [STATE], [PHONE1], [PHONE2], [ROOM_COST] FROM [HOTELS] WHERE ([hotel_id] = @hotel_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="hotel_id" SessionField="h_id" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>

            
        </p>    
    </div>

</asp:Content>
