<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
<!-- Mirrored from thevectorlab.net/flatlab/advanced_form_components.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:36:13 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title>Advanced Form Components</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="css/font-awesome.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="css/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css" href="css/datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/multi-select.css" />

    <!--right slidebar-->
    <link href="css/slidebars.css" rel="stylesheet">

    <!--  summernote -->
    <link href="css/summernote.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" class="">
      <!--header start-->
        <%@include file="header.jsp" %>
      <!--header end-->
      	 <%@include file="menu.jsp" %>
      <!--sidebar start-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          <!-- page start-->
            

              <!--date picker start-->
              <div class="row">
              <div class="col-md-12">
                  <section class="panel">
                      <header class="panel-heading">
                         <b><i> Manage Events</i></b>
                          <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                        </span>
                      </header>
                      <div class="panel-body">
                          <form action="<%=request.getContextPath() %>/Event" class="form-horizontal tasi-form" id="signupForm" method="post">
                          
                          <div class="form-group ">
                                          <label for="event_name" class="control-label col-lg-2">Title</label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="event_name" name="event_name" type="text" />
                                          </div>
                           </div>
                           
                           <div class="form-group ">
                                          <label for="place_name" class="control-label col-lg-2">Palce</label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="place_name" name="place_name" type="text" />
                                          </div>
                           </div>
                              
                           <div class="form-group">
                                                  <label class="control-label col-lg-2">Date</label>
                                                  <div class="col-md-6 col-lg-4">

                                                      <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="12-02-2012"  class="input-append date dpYears">
                                                          <input type="text" readonly=""  size="16" class="form-control" name="date"/>
                                                          <span class="input-group-btn add-on">
                                                            <button class="btn btn-danger" type="button"><i class="fa fa-calendar"></i></button>
                                                          </span>
                                                      </div>
                                                      <span class="help-block">Select date</span>
                                                  </div>
                                              </div>
                                              
                              
								  <div class="form-group ">
	                                          <label for="details" class="control-label col-lg-2">Description</label>
	                                          <div class="col-lg-10">
	                                              <textarea class="form-control " id="details" name="details" ></textarea>
	                                          </div>
	                              </div> 
	                                  	

                                 <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-success" type="submit">Add</button>
                                              <button class="btn btn-danger" type="reset">Reset</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>


                          </form>
                      </div>
                  </section>
              </div>
          </div>


              <!--time picker start-->
              
                         
              <!--time picker end-->

              <!--color picker start-->
                            <!--color picker end-->

              <!--Spinner start-->
                            <!--Spinner end-->

              <!--Advanced File Input start-->
                            <!--Advanced File Input end-->

              <!--wysihtml5 start-->
                            <!--wysihtml5 end-->

              <!--Summernote start-->
              
              <!--Summernote end-->


          <!-- page end-->
          </section>
      </section>
      <!--main content end-->

      <!-- Right Slidebar start -->
            <!-- Right Slidebar end -->

      <!--footer start-->
      <%@include file="footer.jsp" %>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/respond.min.js" ></script>
  
    <!--this page plugins-->

  <script type="text/javascript" src="js/spinner.min.js"></script>
  <script type="text/javascript" src="js/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="js/wysihtml5-0.3.0.js"></script>
  <script type="text/javascript" src="js/bootstrap-wysihtml5.js"></script>
  <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="js/moment.min.js"></script>
  <script type="text/javascript" src="js/daterangepicker.js"></script>
  <script type="text/javascript" src="js/bootstrap-colorpicker.js"></script>
  <script type="text/javascript" src="js/bootstrap-timepicker.js"></script>
  <script type="text/javascript" src="js/jquery.multi-select.js"></script>
  <script type="text/javascript" src="js/jquery.quicksearch.js"></script>


  <!--summernote-->
  <script src=js/summernote.min.js"></script>

  <!--right slidebar-->
  <script src="js/slidebars.min.js"></script>

  <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    <!--this page  script only-->
    <script src="js/advanced-form-components.js"></script>
    

  <script>

      jQuery(document).ready(function(){

          $('.summernote').summernote({
              height: 200,                 // set editor height

              minHeight: null,             // set minimum height of editor
              maxHeight: null,             // set maximum height of editor

              focus: true                 // set focus to editable area after initializing summernote
          });
      });

  </script>

  </body>

<!-- Mirrored from thevectorlab.net/flatlab/advanced_form_components.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:36:36 GMT -->
</html>
