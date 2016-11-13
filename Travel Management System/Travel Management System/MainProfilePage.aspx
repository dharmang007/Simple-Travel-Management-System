<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="MainProfilePage.aspx.cs" Inherits="Travel_Management_System.MainProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .body{
            background-image:none;
        }
        .tour {
            background-image: url('../Pics/HomePagePic.jpg');
             background-size: cover;
            text-align:center;
            color:white;
            height:500px;
            background-color:white;
             opacity:0.8;
             justify-content: center;
             vertical-align:central;
        } 
        .a:link{
            color:white;
           
        }
        .tour .a{
            font-size:larger;
            background-color:darkslateblue;
            color:white;
            
        }
        .tour .p{
            text-align:center;
            
            color:white;         
        }
        .tour h2{
            align-items:center;
        }
        .hotel {
            background-image: url('../Pics/hotelcover.jpg');
            background-color:black;
            opacity:0.8;
            text-align:center;
            vertical-align:central;
             height:500px;
             
        }
        .label-info{
           color:white;
           background-color:black;
           opacity:0.7;
          padding-left:50px;
          
          align-content:center;
        }
     
     
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
        
    <div class="welcome" style="text-align:center">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    <div class="tour">    
                    <h2>
              <br/> <br/> <br/>
                <a href="DisplayTours.aspx" class="btn btn-primary" style="width:300px; height:50px ; font-size:x-large;"   >Explore the Tours!</a><br/><br/><br/>
                <p class="label-info">
                    Find the best tour packages without any hustle.<br/>
                    Book and pack your lugguage.
                </p>
            </h2>
        
    </div>
    <div class="hotel" >        
            <h2>
              <br/><br/><br/>
                <a href="DisplayHotels.aspx" class="btn btn-primary" style="width:300px; height:50px; font-size:x-large;color:white; background-color:black;" >Explore the Hotel!</a><br/><br/><br/><br/>
                <p class="label-info">
                    Stay at the Best hotels for less price!<br/><br/>
                    
                </p>
            </h2>
        
    </div>
   

</asp:Content>
