package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;








import VO.Chairman_VO;
import VO.Country_VO;


import VO.Socdetail_VO;
import VO.State_VO;
import DAO.chairmanDAO;
import DAO.countryDAO;
import DAO.socDAO;
import DAO.stateDAO;


/**
 * Servlet implementation class State
 */
@WebServlet("/State")
public class State extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public State() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s= request.getParameter("flag");
		if(s.equals("country_Name"))
		{
			countryDAO countryDAO = new countryDAO();
			List l= countryDAO.search_country();
			
			HttpSession session= request.getSession();
			session.setAttribute("country_list", l);
			
			response.sendRedirect("Admin/add_state.jsp");
			
		}
		
		String s1= request.getParameter("flag");
		if(s1.equals("search_state")) {
			searchState(request, response);
		}
		
		else if(s1.equals("edit")){
			editState(request, response);
		}
		
		else if(s1.equals("update")){
			updateState(request,response);
		}
	
		else if(s.equals("delete"))
		{
			delete(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int country_Id= Integer.parseInt(request.getParameter("country"));
		String state_Name= request.getParameter("state");
		String state_Des= request.getParameter("comment");
		
	
		
		
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		
		State_VO vo= new State_VO();
		vo.setState_Name(state_Name);
		vo.setState_Des(state_Des);
		vo.setCountry_Id(cvo);
		
		stateDAO dao= new stateDAO();
		dao.insert(vo);
		
		response.sendRedirect("Admin/add_state.jsp");

	}
	
	private void searchState(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		stateDAO d= new stateDAO();
		List l=d.search();
		
		HttpSession session= request.getSession();
		session.setAttribute("searchState", l);
		
		response.sendRedirect("Admin/search_state.jsp");
		
	}

	private void editState(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int state_Id = Integer.parseInt(request.getParameter("id"));
		
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		
		stateDAO dao= new stateDAO();
		List ls=dao.edit(svo);
		countryDAO d = new countryDAO();
		List l=d.search_country();
		
		HttpSession session = request.getSession();
		session.setAttribute("state", ls);
		session.setAttribute("country_data", l);
	
		response.sendRedirect("Admin/search_state.jsp#edit");
	}

	
	private void updateState(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int state_Id = Integer.parseInt(request.getParameter("state_Id"));
		String state_Name= request.getParameter("state");
		String state_Des= request.getParameter("comment");
		
		int country_Id= Integer.parseInt(request.getParameter("country"));
	
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		svo.setState_Name(state_Name);
		svo.setState_Des(state_Des);
		svo.setCountry_Id(cvo);
		
		stateDAO dao= new stateDAO();
		dao.update(svo);
		
		searchState(request, response);
	}

	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		int state_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		
		stateDAO dao= new stateDAO();
		if(!dao.delete(svo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		searchState(request,response);
	}

}
