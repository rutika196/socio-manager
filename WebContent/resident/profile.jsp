<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
<!-- Mirrored from thevectorlab.net/flatlab/profile.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:38:29 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resident/img/favicon.html">

    <title>Profile</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resident/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resident/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/resident/css/font-awesome.css" rel="stylesheet" />
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

  <section id="container" class="">
      <!--header start-->
      	<%@include file="header.jsp" %>
      <!--header end-->
      <!--sidebar start-->
      	<%@include file="menu.jsp" %>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <div class="row">
                  <aside class="profile-nav col-lg-3">
                      <section class="panel">
                          <div class="user-heading round">
                              <a href="#">
                                  <img src="${pageContext.request.contextPath}/resident/img/profile-avatar.jpg" alt="">
                              </a>
                              <h1>chairman</h1>
                              <p>chairman@gmail.com</p>
                          </div>

                          <ul class="nav nav-pills nav-stacked">
                              <li class="active"><a href="#"> <i class="fa fa-user"></i> Profile</a></li>
                              
                              <li><a href="profile_edit.jsp"> <i class="fa fa-edit"></i> Edit profile</a></li>
                          </ul>

                      </section>
                  </aside>
                  <aside class="profile-info col-lg-9">
                      <section class="panel">
                          
                          
                      </section>
                      <section class="panel">
                          <div class="bio-graph-heading">
                              Welcome to your profile Page.
                          </div>
                          <div class="panel-body bio-graph-info">
                              <h1>Bio Graph</h1>
                              <div class="row">
                                  <div class="bio-row">
                                      <p><span>Society Name </span>#</p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Full Name </span>: </p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Address </span>: india</p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Birthday</span>#</p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Occupation </span>: </p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Email </span>#</p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Mobile </span></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Phone </span>: 88 (02) 123456</p>
                                  </div>
                              </div>
                          </div>
                      </section>
                            </section>
      <!--main content end-->

      <!-- Right Slidebar start -->
      <div class="sb-slidebar sb-right sb-style-overlay">
          <h5 class="side-title">Online Customers</h5>
          <ul class="quick-chat-list">
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/resident/img/chat-avatar2.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <strong>John Doe</strong>
                          <small>Dream Land, AU</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/resident/img/chat-avatar.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-important">3</span>
                          </div>
                          <strong>Jonathan Smith</strong>
                          <small>United States</small>
                      </div>
                  </div><!-- media -->
              </li>

              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/resident/img/pro-ac-1.png" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-success">5</span>
                          </div>
                          <strong>Jane Doe</strong>
                          <small>ABC, USA</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/resident/img/avatar1.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <strong>Anjelina Joli</strong>
                          <small>Fockland, UK</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/resident/img/mail-avatar.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-warning">7</span>
                          </div>
                          <strong>Mr Tasi</strong>
                          <small>Dream Land, USA</small>
                      </div>
                  </div><!-- media -->
              </li>
          </ul>
          <h5 class="side-title"> pending Task</h5>
          <ul class="p-task tasks-bar">
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Dashboard v1.3</div>
                          <div class="percent">40%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                              <span class="sr-only">40% Complete (success)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Database Update</div>
                          <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning">
                              <span class="sr-only">60% Complete (warning)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Iphone Development</div>
                          <div class="percent">87%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 87%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
                              <span class="sr-only">87% Complete</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Mobile App</div>
                          <div class="percent">33%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-danger">
                              <span class="sr-only">33% Complete (danger)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Dashboard v1.3</div>
                          <div class="percent">45%</div>
                      </div>
                      <div class="progress progress-striped active">
                          <div style="width: 45%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar">
                              <span class="sr-only">45% Complete</span>
                          </div>
                      </div>

                  </a>
              </li>
              <li class="external">
                  <a href="#">See All Tasks</a>
              </li>
          </ul>
      </div>
      <!-- Right Slidebar end -->

      <!--footer start-->
      	<%@include file="footer.jsp" %>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/resident/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/resident/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resident/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/resident/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath}/resident/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/resident/js/common-scripts.js"></script>

  <script>

      //knob
      $(".knob").knob();

  </script>


  </body>

<!-- Mirrored from thevectorlab.net/flatlab/profile.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:38:32 GMT -->
</html>
