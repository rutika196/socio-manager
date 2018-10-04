<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a class="active" href="${pageContext.request.contextPath}/Admin/index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  
                  <li>
                      <a href="<%=request.getContextPath()%>/Society_details?flag=search_society">
                          <i class="fa fa-dashboard"></i>
                          <span>Society Details</span>
                      </a>
                  </li>
					
				  
				
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-user"></i>
                          <span>Chairman</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=request.getContextPath()%>/Admin/add_chairman.jsp"><i class="fa fa-edit"></i>
                          <span>Add Chairman</span></a></li>
                          <li><a  href="<%=request.getContextPath()%>/Chairman?flag=search_chairman"><i class="fa fa-list"></i>
                          <span>Search Chairman</span></a></li>
                      </ul>
                  </li>
                                    
                  
                  

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cloud"></i>
                          <span>Country</span>
                      </a>
                      <ul class="sub">
                      
                          <li><a  href="${pageContext.request.contextPath}/Admin/add_country.jsp"><i class="fa fa-edit"></i>
                          <span>Add Country</span></a></li>
                      
                          <li><a  href="<%=request.getContextPath()%>/Country?flag=search_country"><i class="fa fa-list"></i>
                          <span>Search Country</span></a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cloud"></i>
                          <span>State</span>
                      </a>
                      <ul class="sub">
                      
                          <li><a  href="<%=request.getContextPath()%>/State?flag=country_Name"><i class="fa fa-edit"></i>
                          <span>Add State</span></a></li>
                      
                          <li><a  href="<%=request.getContextPath()%>/State?flag=search_state"><i class="fa fa-list"></i>
                          <span>Search State</span></a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cloud"></i>
                          <span>City</span>
                      </a>
                      <ul class="sub">
                      
                          <li><a  href="<%=request.getContextPath()%>/City?flag=loadData"><i class="fa fa-edit"></i>
                          <span>Add City</span></a></li>
                      
                          <li><a  href="<%=request.getContextPath()%>/City?flag=search_city"><i class="fa fa-list"></i>
                          <span>Search City</span></a></li>
                      </ul>
                  </li>

                 
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/Admin/package.jsp">
                          <i class="fa fa-thumbs-up"></i>
                          <span>Packages</span>
                      </a>
                  </li>
                  
                     <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-bell"></i>
                          <span>Notification</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/Admin/Send_notification.jsp">
                          <i class="fa fa-edit"></i>
                          <span>Send Notification</span></a></li>
                          
                          <li><a  href="${pageContext.request.contextPath}/Admin/manage_notification.jsp"><i class="fa fa-list"></i>
                          <span>Manage Notification</span></a></li>
                      </ul>
                  </li>
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/Admin/complaint.jsp">
                          <i class="fa fa-thumbs-down"></i>
                          <span>Complaints</span>
                      </a>
                  </li>
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/Admin/feedback.jsp">
                          <i class="fa fa-thumbs-up"></i>
                          <span>Feedback </span>
                      </a>
                  </li>
                  
                  
                 
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
</body>
</html>