<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
<!-- Mirrored from thevectorlab.net/flatlab/profile-edit.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:39:24 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/chairman/img/favicon.html">

    <title>Profile Edit</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/chairman/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/chairman/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/chairman/css/font-awesome.css" rel="stylesheet" />
      <!--right slidebar-->
      <link href="${pageContext.request.contextPath}/chairman/css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/chairman/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/chairman/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/chairman/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/chairman/js/respond.min.js"></script>
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
                                  <img src="${pageContext.request.contextPath}/chairman/img/profile-avatar.jpg" alt="">
                              </a>
                              <h1>Jonathan Smith</h1>
                              <p>jsmith@flatlab.com</p>
                          </div>

                          <ul class="nav nav-pills nav-stacked">
                              <li><a href="profile.jsp"> <i class="fa fa-user"></i> Profile</a></li>
                              
                              <li  class="active"><a href="#"> <i class="fa fa-edit"></i> Edit profile</a></li>
                          </ul>

                      </section>
                  </aside>
                  <aside class="profile-info col-lg-9">
                      <section class="panel">
                          <div class="bio-graph-heading">
                              edit your profile.
                          </div>
                          <div class="panel-body bio-graph-info">
                              <h1> Profile Info</h1>
                              <form class="form-horizontal" role="form">
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">First Name</label>
                                      <div class="col-lg-6">
                                          <input type="text" class="form-control" id="f-name" placeholder=" ">
                                      </div>
                                  </div>
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">Address</label>
                                      <div class="col-lg-6">
                                          <textarea name="" id="" class="form-control" ></textarea>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">Birthday</label>
                                      <div class="col-lg-6">
                                          <input type="text" class="form-control" id="b-day" placeholder=" ">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">Occupation</label>
                                      <div class="col-lg-6">
                                          <input type="text" class="form-control" id="occupation" placeholder=" ">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">Email</label>
                                      <div class="col-lg-6">
                                          <input type="text" class="form-control" id="email" placeholder=" ">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">Mobile</label>
                                      <div class="col-lg-6">
                                          <input type="text" class="form-control" id="mobile" placeholder=" ">
                                      </div>
                                  </div>
                                  

                                  <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                          <button type="submit" class="btn btn-success">Save</button>
                                          <button type="button" class="btn btn-default">Cancel</button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </section>
                      <section>
                          <div class="panel panel-primary">
                              <div class="panel-heading"> Sets New Password & Avatar</div>
                              <div class="panel-body">
                                  <form class="form-horizontal" role="form">
                                      <div class="form-group">
                                          <label  class="col-lg-2 control-label">Current Password</label>
                                          <div class="col-lg-6">
                                              <input type="password" class="form-control" id="c-pwd" placeholder=" ">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label  class="col-lg-2 control-label">New Password</label>
                                          <div class="col-lg-6">
                                              <input type="password" class="form-control" id="n-pwd" placeholder=" ">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label  class="col-lg-2 control-label">Re-type New Password</label>
                                          <div class="col-lg-6">
                                              <input type="password" class="form-control" id="rt-pwd" placeholder=" ">
                                          </div>
                                      </div>

                                      <div class="form-group">
                                          <label  class="col-lg-2 control-label">Change Avatar</label>
                                          <div class="col-lg-6">
                                              <input type="file" class="file-pos" id="exampleInputFile">
                                          </div>
                                      </div>

                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button type="submit" class="btn btn-info">Save</button>
                                              <button type="button" class="btn btn-default">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </section>
                  </aside>
              </div>

              <!-- page end-->
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
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/chat-avatar2.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/chat-avatar.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/pro-ac-1.png" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/avatar1.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/mail-avatar.jpg" class="media-object">
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
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath}/chairman/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/chairman/js/common-scripts.js"></script>


  </body>

<!-- Mirrored from thevectorlab.net/flatlab/profile-edit.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:39:24 GMT -->
</html>