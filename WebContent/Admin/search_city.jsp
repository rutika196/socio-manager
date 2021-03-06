<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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

    <title>Search City</title>

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
    <link href="${pageContext.request.contextPath}/Admin/css/popup.css" rel="stylesheet" />
    

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
                      Search City
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
                                  <th>Country_Name</th>
                                  <th>State_Name</th>
                                  <th>City_Name</th>
                                  <th>Area_Name</th>
                                  <th>Pincode</th>
                                  <th>Area_des</th>
                                  <th>Edit</th>
                                  <th>Delete</th>
                                  
                              </tr>
                              </thead>
                             
                              <tbody>
                              <c:forEach items="${sessionScope.search_Data }" var="i">
                              <tr class="">
                                  <th><input type="checkbox"/></td>
                                  <td>${i.city_Id }</td>
                                  <td>${i.country_Id.country_Name }</td>
                                  <td>${i.state_Id.state_Name }</td>
                                  <td>${i.city_Name }</td>
                                  <td>${i.area_Name }</td>
                                  <td>${i.pincode_No }</td>
                                  <td>${i.area_Detail }</td>
                                
                                  <td><a href="<%= request.getContextPath()%>/City?id=${i.city_Id}&flag=edit">Edit</a></td>
                                  <td><a href="<%= request.getContextPath()%>/City?id=${i.city_Id}&flag=delete">Delete</a></td>
                                  
                              </tr>
                              </c:forEach>
                                  </tbody>
                          </table>
                          
                          <div class="row">
						
							</div>
							</div>
						</div>
						</div>
							
					</div>
					
					<!-- BEGIN POPUP -->
					<div id="edit" class="overlay1">
					<div class="popup1">
						<div class="content1" style="height:550px">
							<div class="row">
								<div class="col-lg-12">
									<div class="portlet box portlet-red">
										<div class="portlet-header" style="height:50px">
											<div class="caption">Edit Chairman</div>
											<a class="close fa fa-times" href="#" title="close" style="color:black" onClick="alert1()"></a>
										</div>
				
											<div class="row">
						                  <div class="col-lg-12">
						                      <section class="panel">
						                          
						                          <div class="panel-body">
						                              <div class=" form">
						                                  <form class="cmxform form-horizontal tasi-form" method="get" action="<%= request.getContextPath() %>/City">
						                                  
						                                  <c:forEach items="${sessionScope.city }" var="t">
												
																<input type="hidden" name="city_Id" value="${t.city_Id }"/>
																<input type="hidden" name="flag" value="update"/>
												
						                                     <div class="form-group ">
						                                          <label for="country" class="control-label col-lg-2">Country Name</label>
						                                          <div class="col-lg-10">
						                                              <select id="minbeds" class="form-control" name="country" required>
										                                              <c:forEach items="${sessionScope.country_data }" var="j">
																					 		<c:if test="${j.country_Id eq t.country_Id.country_Id }">
																								<option value="${j.country_Id }" selected="selected">${j.country_Name}</option>
																							</c:if>
																							<c:if test="${j.country_Id ne t.country_Id.country_Id }">
																								<option value="${j.country_Id }">${j.country_Name}</option>
																							</c:if>
																			</c:forEach>
															
																	
																			</select>
																  </div>
						                                      </div>
						                                      
						                                      <div class="form-group ">
						                                          <label for="country" class="control-label col-lg-2">State Name</label>
						                                          <div class="col-lg-10">
						                                              <select id="minbeds" class="form-control" name="state" required>
										                                              <c:forEach items="${sessionScope.state_data }" var="s">
																					 		<c:if test="${s.state_Id eq t.state_Id.state_Id }">
																								<option value="${s.state_Id }" selected="selected">${s.state_Name}</option>
																							</c:if>
																							<c:if test="${s.state_Id ne t.state_Id.state_Id }">
																								<option value="${i.state_Id }">${i.state_Name}</option>
																							</c:if>
																			</c:forEach>
															
																	
																			</select>
																  </div>
						                                      </div>
						                                      
						                                       <div class="form-group ">
						                                          <label for="cname" class="control-label col-lg-2">City Name</label>
						                                          <div class="col-lg-10">
						                                              <input class=" form-control" id="cname" name="city" minlength="2" type="text" value="${t.city_Name }" required />
						                                          </div>
						                                      </div>
						                                      
						                                      <div class="form-group ">
						                                          <label for="cname" class="control-label col-lg-2">Area Name</label>
						                                          <div class="col-lg-10">
						                                              <input class=" form-control" id="cname" name="area" minlength="2" type="text" value="${t.area_Name }" required />
						                                          </div>
						                                      </div>
                                      						 
                                      						 <div class="form-group ">
						                                          <label for="cname" class="control-label col-lg-2">Pincode</label>
						                                          <div class="col-lg-10">
						                                              <input class=" form-control" id="cname" name="pn" minlength="2" type="number" value="${t.pincode_No }" required />
						                                          </div>
						                                      </div>
                                      
						                                       <div class="form-group ">
						                                          <label for="ccomment" class="control-label col-lg-2">Description</label>
						                                          <div class="col-lg-10">
						                                              <textarea class="form-control " id="ccomment" name="comment" required>${t.area_Detail }</textarea>
						                                          </div>
						                                      </div>                                                          
						                                      
						                                    </c:forEach>  
						                                      <div class="form-group">
						                                          <div class="col-lg-offset-2 col-lg-10">
						                                              <button class="btn btn-danger" type="submit">Update</button>
						                                              </div>
						                                      </div>
						                                  </form>
						                              </div>
						
						                          </div>
						                      </section>
						                  </div>
						              </div>
              					</div>
								</div>
							</div>
						</div>
					</div>
			
                                     
					
				<!-- END POPUP -->
			
                                     
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