<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Travel_Management_System.WebForm3" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    
        <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <script src="Scripts/bootstrap.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/jquery-1.9.1.intellisense.js"></script>
        <script src="Scripts/jquery-1.9.1.min.js"></script>
        <script src="Scripts/jquery-1.9.1.js"></script>
    <style>
        .jumbotron {
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
        .jumbotron .a{
            font-size:larger;
            background-color:darkslateblue;
            color:white;
            
        }
        .jumbotron .p{
            text-align:center;
            
            color:white;         
        }
        .jumbotron h2{
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
</head>
<body>
   <div class="no-padding">
    <div class="jumbotron tour">        
            <h2>
              </br> </br> </br>
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
                <a href="DisplayTours.aspx" class="btn btn-primary" style="width:300px; height:50px; font-size:x-large;color:white; background-color:black;" >Explore the Hotel!</a><br/><br/><br/><br/>
                <p class="label-info">
                    Stay at the Best hotels for less price!<br/><br/>
                    
                </p>
            </h2>
        
    </div>
       </div>

</body>
</html>
