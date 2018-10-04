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
                      <a class="active" href="${pageContext.request.contextPath}/resident/index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  
                   
                  <li>
                      <a href="${pageContext.request.contextPath}/resident/profile.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Profile</span>
                      </a>
                  </li>
                  
        
                  <li>
                      <a href="${pageContext.request.contextPath}/resident/search_bill_info.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Bill Information</span>
                      </a>
                  </li>
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/resident/search_events.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Events</span>
                      </a>
                  </li>
                  
                   
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/resident/view_notice.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Notice</span>
                      </a>
                  </li>
                  
                 <li>
                      <a href="${pageContext.request.contextPath}/resident/view_notification.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Notification</span>
                      </a>
                  </li>
                 <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Complaints</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/resident/post_complaints.jsp"> Post Compliants</a></li>
                          <li><a  href="${pageContext.request.contextPath}/resident/view_complaints.jsp">View Complaints</a></li>
                      </ul>
                  </li>
                  

				 <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Feedback</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/resident/send_feedback.jsp"> Send Feedback</a></li>
                          <li><a  href="${pageContext.request.contextPath}/resident/view_feedback.jsp">View Feedback</a></li>
                      </ul>
                  </li>
                 
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>

</body>
</html>