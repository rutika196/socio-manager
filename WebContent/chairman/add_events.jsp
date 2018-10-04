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

    <title>Events</title>

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
                             <b><i>Manage Events</i></b>
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="cmxform form-horizontal tasi-form" id="signupForm" method="get" action="">
                                     
                                      <div class="form-group ">
                                          <label for="event_name" class="control-label col-lg-2">Title</label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="event_name" name="event_name" type="text" required />
                                          </div>
                                      </div>
                                      
                                      
                                     	    <div class="form-group ">
                                          <label for="resident_fname" class="control-label col-lg-2">Place</label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="resident_fname" name="place_name" type="text" />
                                          </div>
                                      </div>
                                      
                                 
                                               
                                      <div class="form-group">
                                      <label for="date" class="control-label col-lg-2">Date And Time</label>
                                      <div class="col-lg-4">
                                          <div data-date="2012-12-21T15:25:00Z" class="input-group date form_datetime-meridian">
                                              <input type="text" class="form-control" readonly="" size="16"id="date" name="date">
                                              <div class="input-group-btn">
                                                  <button type="button" class="btn btn-danger date-reset"><i class="fa fa-times"></i></button>
                                                  <button type="button" class="btn btn-info date-set"><i class="fa fa-calendar"></i></button>
                                              </div>
                                          </div>
                                      </div>
                                  	  </div>  
                                  	  
	                                  	 
                                      
	                                 	<div class="form-group ">
		                                          <label for="Wing_address" class="control-label col-lg-2">Description</label>
		                                          <div class="col-lg-10">
		                                              <textarea class="form-control " id="Wing_address" name="Wing_address" requierd></textarea>
		                                          </div>
		                                </div>
		                                
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-success" type="submit">Send</button>
                                              <button class="btn btn-danger" type="reset">Reset</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
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
    <script src="${pageContext.request.contextPath}/chairman/js/form-validation-scripte.js"></script>
    
    
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
  <script src="${pageContext.request.contextPath}/chairman/js/advanced-form-components.js"></script>


  </body>
</html>
