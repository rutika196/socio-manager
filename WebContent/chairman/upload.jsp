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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/chairman/img/favicon.png">

    <title>Upload</title>

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
    <link href="${pageContext.request.contextPath}/chairman/css/summernote.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/chairman/css/multi-select.css" />
    

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
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             <b><i>Upload</i></b>
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="cmxform form-horizontal tasi-form" id="signupForm" method="get" action="">
                                     
                                        <div class="form-group ">
                                          <label for="charge_type" class="control-label col-lg-2">Selet Album </label>
                                          <div class="col-lg-10">
                                              <select id="charge_type" class="form-control" name="charge_type" >
                                              <option value="">--Album type--</option>
                                               <option value="">Society</option>
                                               <option value="">Festival</option>
                                               <option value="">Event</option>
                                               	 </select> 
										  </div>
                                      </div>
                                      
                                      
                                                       <div class="form-group">
                                                  <label class="control-label col-lg-2">Date</label>
                                                  <div class="col-lg-4 col-xs-6">

                                                      <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date=""  class="input-append date dpYears">
                                                          <input type="text"  value="" size="16" class="form-control" requierd>
                                                          <span class="input-group-btn add-on">
                                                            <button class="btn btn-info" type="button"><i class="fa fa-calendar"></i></button>
                                                          </span>
                                                      </div>
                                                    
                                                  </div>
                                              </div>
                                              
                                               

                                              </div>
                                <div class="fileupload fileupload-new" data-provides="fileupload">
											                                <input type="hidden">
											<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
											<img alt="" src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image">
											</div>
											<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 10px;"></div>
											<div>
											<span class="btn btn-white btn-file">
											<span class="fileupload-new">
											<i class="fa fa-paper-clip"></i>
											Select image
											</span>
											<span class="fileupload-exists">
											<i class="fa fa-undo"></i>
											Change
											</span>
											<input class="default" type="file">
											</span>
											<a class="btn btn-danger fileupload-exists" data-dismiss="fileupload" href="#">
											<i class="fa fa-trash"></i>
											Remove
											</a>
											</div>
											</div>
											<span class="label label-danger">NOTE!</span>
											<span> Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only </span>
											</div>
                                 				  <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-success" type="submit">Upload</button>
                                           
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  
                              </div>
                          
                      </section>
                  </div>
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
      
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath}/chairman/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/chairman/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="${pageContext.request.contextPath}/chairman/js/form-validation-scriptr.js"></script>
    
     <script src="${pageContext.request.contextPath}/chairman/js/advanced-form-components.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/spinner.min.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/bootstrap-fileupload.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/wysihtml5-0.3.0.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/bootstrap-wysihtml5.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/bootstrap-datepicker.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/bootstrap-datetimepicker.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/moment.min.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/daterangepicker.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/bootstrap-colorpicker.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/bootstrap-timepicker.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.multi-select.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.quicksearch.js"></script>

     


  </body>
</html>
