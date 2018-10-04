<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resident/img/favicon.png">

    <title>SOCIO MANAGER</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resident/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resident/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/resident/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resident/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resident/css/owl.carousel.css" type="text/css">

      <!--right slidebar-->
      <link href="${pageContext.request.contextPath}/resident/css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <link href="${pageContext.request.contextPath}/resident/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resident/css/style-responsive.css" rel="stylesheet" />



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/resident/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/resident/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!--header start-->
      		<%@include file="header.jsp" %>		
      <!--header end-->
      <!--sidebar start-->
      	<%@include file="menu.jsp" %>
            <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-8 col-sm-6">
                      <section class="panel">
                          <div class="symbol terques">
                              <i class="fa fa-user"></i>
                          </div>
                          <div class="value">
                              <h1 class="count">
                                  0
                              </h1>
                              <p>Total Residents</p>
                          </div>
                      </section>
                  </div>
                  </div>
                  <br/>
              <!--state overview end-->

                      <!--custom chart end-->
                  
                      <!--new earning end-->

                      <!--total earning start-->
                      
                      <!--total earning end-->
                  
              
                  
                      <!--work progress start-->
                        <!--work progress end-->
                  
              
              <div class="row">
                  <div class="col-lg-8">
                      <!--timeline start-->
                      <section class="panel">
                          <div class="panel-body">
                                  <div class="text-center mbot30">
                                      <h3 class="timeline-title">Timeline</h3>
                                      <p class="t-info">This is a project timeline</p>
                                  </div>

                                  <div class="timeline">
                                      <article class="timeline-item">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow"></span>
                                                      <span class="timeline-icon red"></span>
                                                      <span class="timeline-date">08:25 am</span>
                                                      <h1 class="red">12 July | Sunday</h1>
                                                      <p>enjoy time</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      <article class="timeline-item alt">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow-alt"></span>
                                                      <span class="timeline-icon green"></span>
                                                      <span class="timeline-date">10:00 am</span>
                                                      <h1 class="green">10 July | Wednesday</h1>
                                                      <p><a href="#">Jonathan Smith</a> added new complaints <span><a href="#" class="green">ERP</a></span></p>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      <article class="timeline-item">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow"></span>
                                                      <span class="timeline-icon blue"></span>
                                                      <span class="timeline-date">11:35 am</span>
                                                      <h1 class="blue">05 July | Monday</h1>
                                                      <p><a href="#">Anjelina Joli</a> added new album <span><a href="#" class="blue">PARTY TIME</a></span></p>
                                                      <div class="album">
                                                          <a href="#">
                                                              <img alt="" src="${pageContext.request.contextPath}/resident/img/sm-img-1.jpg">
                                                          </a>
                                                          <a href="#">
                                                              <img alt="" src="${pageContext.request.contextPath}/resident/img/sm-img-2.jpg">
                                                          </a>
                                                          <a href="#">
                                                              <img alt="" src="${pageContext.request.contextPath}/resident/img/sm-img-3.jpg">
                                                          </a>
                                                          <a href="#">
                                                              <img alt="" src="${pageContext.request.contextPath}/resident/img/sm-img-1.jpg">
                                                          </a>
                                                          <a href="#">
                                                              <img alt="" src="${pageContext.request.contextPath}/resident/img/sm-img-2.jpg">
                                                          </a>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      
                                      
                                  </div>

                                  <div class="clearfix">&nbsp;</div>
                              </div>
                      </section>
                      <!--timeline end-->
                  </div>
                  <div class="col-lg-4">
                      <!--revenue start-->
                      
                      <!--revenue end-->
                      <!--features carousel start-->
                      <section class="panel">
                          <div class="flat-carousal">
                              <div id="owl-demo" class="owl-carousel owl-theme">
                                  <div class="item">
                                      <h1>see you notification</h1>
                                      <div class="text-center">
                                          <a href="javascript:;" class="view-all">View All</a>
                                      </div>
                                  </div>
                                  <div class="item">
                                      <h1>Fully responsive and build with Bootstrap 3.0</h1>
                                      <div class="text-center">
                                          <a href="javascript:;" class="view-all">View All</a>
                                      </div>
                                  </div>
                                  <div class="item">
                                      <h1>Responsive Frontend is free if you get this.</h1>
                                      <div class="text-center">
                                          <a href="javascript:;" class="view-all">View All</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="panel-body">
                              <ul class="ft-link">
                                  <li class="active">
                                      <a href="javascript:;">
                                          <i class="fa fa-bars"></i>
                                          Sales
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" fa fa-calendar-o"></i>
                                          promo
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" fa fa-camera"></i>
                                          photo
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" fa fa-circle"></i>
                                          other
                                      </a>
                                  </li>
                              </ul>
                          </div>
                      </section>
                      <!--features carousel end-->
                  </div>
              </div>
              <div class="row">
                                        <!--weather statement end-->
                  </div>
              </div>

          </section>
      </section>
      <!--main content end-->
		
      <!-- Right Slidebar start -->
           <!-- Right Slidebar end -->

      <!--footer start-->
		
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/resident/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/resident/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/owl.carousel.js" ></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.customSelect.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resident/js/respond.min.js" ></script>

    <!--right slidebar-->
    <script src="${pageContext.request.contextPath}/resident/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/resident/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="${pageContext.request.contextPath}/resident/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/count.js"></script>

  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
			  autoPlay:true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
