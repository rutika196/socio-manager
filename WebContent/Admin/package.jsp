<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Search Chairman</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/Admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Admin/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/Admin/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/css/DT_bootstrap.css" />

      <!--right slidebar-->
      <link href="${pageContext.request.contextPath}/Admin/css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/Admin/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Admin/css/style-responsive.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/css/popup.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/Admin/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/Admin/js/respond.min.js"></script>
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
          <section class="wrapper site-min-height">
              <!-- page start-->
              <section class="panel">
                  <header class="panel-heading">
                      <b><i>Search Packages Details</i></b>
                  </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                  </button>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#">Print</a></li>
                                      <li><a href="#">Save as PDF</a></li>
                                      <li><a href="#">Export to Excel</a></li>
                                  </ul>
                              </div>
                          </div>
                          <div class="space15"></div>
							<div id="editable-sample_wrapper" class="dataTables_wrapper form-inline" role="grid">
							<div class="row">
								<div class="col-lg-6">
								<div id="editable-sample_length" class="dataTables_length">
								
								</div>
								</div>
								
								<div class="col-lg-6">
									<div id="editable-sample_filter" class="dataTables_filter">
									
									</div>
									</div>
									</div>
                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                          <div><c:out value="${sessionScope.error }"></c:out>
                          <c:remove var="error" scope="session"/>
                          </div>
                              <thead>
                              <tr>
                              		<th><input type="checkbox"/></th>
                                 	<th>ID</th>
                                  	<th>Society_Name</th>
                                  	<th>Chairman_Name</th>
                                  	<th>Contact No.</th>
                                  	<th>Package_Amount</th>
                                  	<th>Duration</th>
                                  	<th>Date</th>
                                  
                                 	<th>Edit</th>
                                  	<th>Delete</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                              	<c:forEach items="${sessionScope.search_Data }" var="i">
                              
                             		 <tr class="">
                                  		<td><input type="checkbox"/></td>
                                 		<td></td>
                                  		<td></td>
                                  		<td></td>
                                  		<td></td>
                                  		<td></td>
                                  		<td></td>
                                  		<td><a href="<%= request.getContextPath()%>/Chairman?id=${i.chairman_Id}&flag=edit">Edit</a></td>
                                  		<td><a href="<%= request.getContextPath()%>/Chairman?id=${i.chairman_Id}&flag=delete">Delete</a></td>
                                  	</tr>
                              	</c:forEach>
                             </tbody>
                          </table>
                          
                          <div class="row">
							
						</div>
						</div>
							
					</div>
				
				
					
					
                                     
              </section>
              <!-- page end-->
          </section>
      </section>
      
      <!--main content end-->
      <!-- Right Slidebar start -->

      <!-- Right Slidebar end -->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2013 &copy; FlatLab by VectorLab.
              <a href="#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/Admin/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/DT_bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath}/Admin/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/Admin/js/common-scripts.js"></script>

      <!--script for this page only-->
      <script src="${pageContext.request.contextPath}/Admin/js/editable-table.js"></script>

      <!-- END JAVASCRIPTS -->
      <script>
          jQuery(document).ready(function() {
              EditableTable.init();
          });
      </script>


</body>
</html>