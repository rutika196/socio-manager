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
                      <a class="active" href="${pageContext.request.contextPath}/chairman/index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  
                   <li>
                      <a href="<%=request.getContextPath()%>/Society_details?flag=loadData">
                          <i class="fa fa-dashboard"></i>
                          <span>Society Details</span>
                      </a>
                  </li>
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/chairman/profile.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Profile</span>
                      </a>
                  </li>
                  
				
				  <!--  <li>
                      <a href="${pageContext.request.contextPath}/chairman/search_committee.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Committee</span>
                      </a>
                  </li>-->
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Residents</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/add_residents.jsp">Add Residents</a></li>
                          <li><a  href="<%=request.getContextPath()%>/Resident?flag=search_resident">Search Residents</a></li>
                          
                      </ul>
                  </li>

				  <li>
                      <a href="inbox.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Mail Box</span>
                      </a>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Billing and Account</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/create_bill.jsp">Creat Bill</a></li>
                          <li><a  href="${pageContext.request.contextPath}/chairman/search_bill_info.jsp">Search Bill Info</a></li>
                          
                      </ul>
                  </li>
                  <!--  -<li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Amenities</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/manage_amenities.jsp">Manage Amenities</a></li>
                          <li><a  href="${pageContext.request.contextPath}/chairman/search_amenities.jsp">Search Amenities</a></li>

                      </ul>
                  </li>-->
                  
                   <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Event</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/event.jsp">Add Event</a></li>
                          <li><a  href="<%=request.getContextPath()%>/Event?flag=search_events">Search Event</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Upload Gallery</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/upload.jsp">Upload</a></li>
                          <li><a  href="#">Search</a></li>
                      </ul>
                  </li>
                  
                   <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Notice bord</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/send_notice.jsp">Send Notice</a></li>
                          <li><a  href="${pageContext.request.contextPath}/chairman/view_notice.jsp">View Notice</a></li>
                      </ul>
                  </li>
                 
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Notification</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/send_notification.jsp">Send Notification</a></li>
                          <li><a  href="${pageContext.request.contextPath}/chairman/view_notification.jsp">View Notification</a></li>
                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Complaints</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/post_complaints.jsp"> Post Compliants</a></li>
                          <li><a  href="${pageContext.request.contextPath}/chairman/view_complaints.jsp">View Complaints</a></li>
                      </ul>
                  </li>
                  

				 <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Feedback</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/chairman/send_feedback.jsp"> Send Feedback</a></li>
                          <li><a  href="${pageContext.request.contextPath}/chairman/view_feedback.jsp">View Feedback</a></li>
                      </ul>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>

</body>
</html>