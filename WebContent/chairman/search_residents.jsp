<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/chairman/img/favicon.png">

    <title>Editable Table</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/chairman/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/chairman/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/chairman/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/chairman/css/DT_bootstrap.css" />

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
          <section class="wrapper site-min-height">
              <!-- page start-->
              <section class="panel">
                  <header class="panel-heading">
                      Search Member
                  </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown">PDF <i class="fa fa-angle-down"></i>
                                  </button>
                                  
                              </div>
                          </div>
                          <div class="space15"></div>
                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                              <thead>
                              <tr>
                              	  <th>ID</th>
                                  <th>Full Name</th>
                                  <th>Flat No./House No.</th>
                                  <th>Residential Type</th>
                                  <th>Wing Address</th>
                                  <th>Mobile No.</th>
                                  <th>Alternative No.</th>
                                  <th>Email_Id</th>
                                  
                                  
                                  <th>Occupation Address</th>
                                  <th>Emergency Call Info</th>
                                  <th>Edit</th>
                                  <th>Delete</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${sessionScope.search_Data }" var="i">
                              <tr class="">
                                  <td>${i.resident_Id }</td>
                                  <td>${i.resident_Name }</td>
                                  <td>${i.house_No }</td>
                                  <td>${i.residential_type }</td>
                                  <td>${i.wing_Add }</td>
                                  <td>${i.resident_Contact }</td>
                                  <td>${i.alternative_No }</td>
                                  <td>${i.resident_Email }</td>
                                  <td>${i.occupation_Add }</td>
                                  <td>${i.emergancy_No }</td>
                                  
                                 
                                  <td><a href="<%= request.getContextPath()%>/Resident?id=${i.resident_Id}&flag=edit">Edit</a></td>
                                  <td><a href="<%= request.getContextPath()%>/Resident?id=${i.resident_Id}&flag=delete">Delete</a></td>
                                  
                              </tr>
                              
                              
                              
                             
                             
                              </c:forEach>
                            
                              </tbody>
                          </table>
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
      <%@include file="footer.jsp" %>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/DT_bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath}/chairman/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/chairman/js/common-scripts.js"></script>

      <!--script for this page only-->
      <script src="${pageContext.request.contextPath}/chairman/js/editable-table.js"></script>

      <!-- END JAVASCRIPTS -->
      <script>
          jQuery(document).ready(function() {
              EditableTable.init();
          });
      </script>


  </body>
</html>
