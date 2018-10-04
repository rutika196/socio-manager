<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="d" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/Admin/img/favicon.png">

    <title>Search Society</title>

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
    <link href="${pageContext.request.contextPath}/Admin/css/popup.css" rel="stylesheet"/>

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
                      <b><i>View/Search Society</i></b>
                  </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                  </button>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#">PDF</a></li>
                                      
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
                              	  <th><input type="checkbox" ></th>
                                  <th>ID</th>
                                  <th>Contact Name of Management Committee OR Board Member</th>
                                  <th>Designation Name</th>
                                  <th>Full Legal Name of Society/ Association</th>
								  <th>Country Name</th>
								  <th>State Name</th>
								  <th>Address of Society / Association</th>
								  <th>Pincode</th>
								  <th>No. of House in Society</th>
								  <th>Email of Association</th>
								  <th>Contact Number of Board</th>
								  <th>Message if Any</th>
								  <th>Edit</th>
								  <th>Delete</th>
                                 
                                  
                                  
                              </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${sessionScope.search_Data }" var="i">
                              <tr class="">
                              	<td>
           							<label><input type="checkbox" class=""/></label>
           						</td>
                                  <td>${i.soc_Id}</td>
                                  <td>${i.board_Name}</td>
                                  <td>${i.designation_Name}</td>
                                  <td>${i.society_Name}</td>
                                  <td>${i.country_Id.country_Name }</td>
                                  <td>${i.state_Id.state_Name }</td>
                                  <td>${i.society_add}</td>
                                  <td>${i.pincode}</td>
                                  <td>${i.house_No}</td>
                                  <td>${i.association_Email}</td>
                                  <td>${i.association_Contact}</td>
                                  <td>${i.msg}</td>
                                  
  
                                  <td><a href="<%= request.getContextPath()%>/Society_details?id=${i.soc_Id}&flag=edit">Edit</a></td>
                                  <td><a href="<%= request.getContextPath()%>/Society_details?id=${i.soc_Id}&flag=delete">Delete</a></td>
                                  
                              </tr>
                              </c:forEach>
                                  </tbody>
                          </table>
                          
                          <div class="row">
							
						</div>
							
					</div>
					<!-- BEGIN POPUP -->
									             
              </section>
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
                          <img alt="" src="${pageContext.request.contextPath}/Admin/img/chat-avatar2.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/Admin/img/chat-avatar.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/Admin/img/pro-ac-1.png" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/Admin/img/avatar1.jpg" class="media-object">
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
                          <img alt="" src="${pageContext.request.contextPath}/Admin/img/mail-avatar.jpg" class="media-object">
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