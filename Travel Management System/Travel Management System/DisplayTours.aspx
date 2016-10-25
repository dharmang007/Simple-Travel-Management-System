<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="DisplayTours.aspx.cs" Inherits="Travel_Management_System.DisplayTours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .portfolio-box {
  position: relative;
  display: block;
  max-width: 650px;
  margin: 0 auto;
}
.portfolio-box .portfolio-box-caption {
  color: white;
  opacity: 0;
  display: block;
  background: rgba(240, 95, 64, 0.9);
  position: absolute;
  bottom: 0;
  text-align: center;
  width: 100%;
  height: 100%;
  -webkit-transition: all 0.35s;
  -moz-transition: all 0.35s;
  transition: all 0.35s;
}
.portfolio-box .portfolio-box-caption .portfolio-box-caption-content {
  width: 100%;
  text-align: center;
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-category,
.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-name {
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
  padding: 0 15px;
}
.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-category {
  text-transform: uppercase;
  font-weight: 600;
  font-size: 14px;
}
.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-name {
  font-size: 18px;
}
.portfolio-box:hover .portfolio-box-caption {
  opacity: 1;
}
.portfolio-box:focus {
  outline: none;
}
@media (min-width: 768px) {
  .portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-category {
    font-size: 16px;
  }
  .portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-name {
    font-size: 22px;
  }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
    <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/1.jpg" class="portfolio-box">
                       <img src="img/portfolio/thumbnails/1.jpg" class="img-responsive" >
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/2.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/2.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/3.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/3.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/4.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/4.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/5.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/5.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/6.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/6.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
