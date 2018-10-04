package authorized;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.userDAO;

import VO.User_VO;

/**
 * Servlet Filter implementation class fltr
 */
@WebFilter("/*")
public class fltr implements Filter {

    /**
     * Default constructor. 
     */
    public fltr() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String uri = ((HttpServletRequest) request).getRequestURI();
		
		RequestDispatcher requestDispatcher;
		
		if (uri.contains("visitorIndex") ||uri.contains("login") || uri.contains("/css") || uri.contains("/js") && !uri.contains("/jsp") || uri.contains("/img") || uri.contains("/fonts") || uri.contains("ForgotController") || uri.contains("ForgotPswd") || uri.contains("visitorIndex") )
		{
			chain.doFilter(request, response);
		}
		
		else if (uri.contains("doLogin")) 
		{	
			String un=request.getParameter("username");
			String pswd=request.getParameter("password");
			
			User_VO uvo = new User_VO();
			uvo.setUn(un);
			uvo.setPwd(pswd);
			
			userDAO dao = new userDAO();
			List list = dao.check(uvo);
			
			if (list != null && list.size() >= 1) {

				Iterator iterator = list.iterator();
				User_VO vo= (User_VO) iterator.next();
				
				String type = vo.getType();
				session.setAttribute("userType", type);

				session.setAttribute("userInfo", list);
				
				Long u_Id=vo.getU_Id();
				session.setAttribute("UserID",u_Id);
				
				if(type!=null && type.equals("admin"))
				{
					userDAO dao1 = new userDAO();
					List l = dao1.check(vo);
					
					int i = l.size();
					session.setAttribute("user_no", i);
					
					requestDispatcher=request.getRequestDispatcher("/Admin/index.jsp");
					requestDispatcher.forward(request, response);
				}
				else if(type!=null && type.equals("chairman"))
				{
					userDAO dao1 = new userDAO();
					List l = dao1.check(vo);
					
					int i = l.size();
					session.setAttribute("user_no", i);
					
					requestDispatcher=request.getRequestDispatcher("/chairman/index.jsp");
					requestDispatcher.forward(request, response);
				}
				else if(type!=null && type.equals("resident"))
				{
					userDAO dao1 = new userDAO();
					List l = dao1.check(vo);
					
					int i = l.size();
					session.setAttribute("user_no", i);
					
					requestDispatcher=request.getRequestDispatcher("/resident/index.jsp");
					requestDispatcher.forward(request, response);
				}
			}
			else
			{
				session.setAttribute("message", "Incorrect Username or Password. Please try again.");
				requestDispatcher=request.getRequestDispatcher("/visitorIndex.jsp");
				requestDispatcher.forward(request, response);
			}
		}
		
		else if(uri.contains("logout"))
		{
			session.invalidate();
			
			requestDispatcher=request.getRequestDispatcher("/visitorIndex.jsp");
			requestDispatcher.forward(request, response);
		}
		
		/*else if(uri.contains("visitor"))
		{
			session.invalidate();
			
			requestDispatcher=request.getRequestDispatcher("/visitor/visitorIndex.jsp");
			requestDispatcher.forward(request, response);
		}*/
		
		else if(session.getAttribute("userType") != null)
		{
			String userType=(String) session.getAttribute("userType");
			if(userType.equals("admin"))
			{
				chain.doFilter(request, response);
			}
			else if(userType.equals("chairman"))
			{
				chain.doFilter(request, response);
			}
			else if(userType.equals("ressident"))
			{
				chain.doFilter(request, response);
			}
		}	
		
		else if(uri.contains("forgot"))
		{
			session.invalidate();
			
			requestDispatcher=request.getRequestDispatcher("/ForgotPswd.jsp");
			requestDispatcher.forward(request, response);
		}

		else if(uri.contains("vstr"))
		{
			session.invalidate();
			
			requestDispatcher=request.getRequestDispatcher("user/visitorIndex.jsp");
			requestDispatcher.forward(request, response);
		}
		
	
		
		else
		{	
			((HttpServletResponse)response).sendRedirect(((HttpServletRequest)request).getContextPath()+"/visitorIndex.jsp");
		}
				 
	}


		
	

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
