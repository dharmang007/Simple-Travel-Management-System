<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="HotelDetails.aspx.cs" Inherits="Travel_Management_System.HotelDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
            .page-header {
                text-align:center;

            }
            .form-horizontal {
                font-size: 30px;
                
                background-color:ghostwhite;
           
            }
            .form-horizontal .col-md-7 group-control{
                text-align:left;
            }
           
                    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <asp:Label ID="Label1"  runat="server" Text="Label"></asp:Label>
    <asp:FormView ID="FormView1" runat="server"
         DataSourceID="SqlDataSource1"
         BackColor="White" BorderColor="#DEDFDE"
         BorderStyle="None"
         BorderWidth="1px" CellPadding="4"
         ForeColor="Black" Width="100%">
        
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        
        <ItemTemplate>
            <div class="row">
                <div class="col-md-4">
                    <asp:Image ID="picImg" runat="server" Width="500px" Height="400px" ImageUrl='<%# Bind("pic") %>' />
                </div>
                
                    <div class="col-md-8 form-horizontal">

                        <div class="form-group">
                            <div class="control-label col-md-3">Hotel Name:</div>
                            <div class="col-md-7 group-control co">
                                <asp:Label ID="HOTEL_NAMELabel"  runat="server" Text='<%# Bind("HOTEL_NAME") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3">Address:</div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="STREETLabel"  runat="server" Text='<%# Bind("STREET") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3"></div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="CITYLabel"  runat="server" Text='<%# Bind("CITY") %>' />
                                <br />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3"></div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="STATELabel"  runat="server" Text='<%# Bind("STATE") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3">Contact:</div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="PHONE1Label"  runat="server" Text='<%# Bind("PHONE1") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3"></div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="PHONE2Label"  runat="server" Text='<%# Bind("PHONE2") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3">
                                Cost per person<br />
                                (per night)
                            </div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="ROOM_COSTLabel"  runat="server" Text='<%# Bind("ROOM_COST") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="control-label col-md-3">Email:</div>
                            <div class="col-md-7 group-control">
                                <asp:Label ID="hotel_emailLabel"  runat="server" Text='<%# Bind("hotel_email") %>' />
                            </div>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Book Now" />

                    </div>

                </div>
            

        </ItemTemplate>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:FormView>  
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" SelectCommand="SELECT [hotel_email], [HOTEL_NAME], [STREET], [CITY], [STATE], [PHONE1], [PHONE2], [ROOM_COST], [pic] FROM [HOTELS] WHERE ([hotel_id] = @hotel_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="hotel_id" QueryStringField="hotel_id" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>
