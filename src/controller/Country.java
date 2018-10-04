package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import javax.servlet.http.HttpSession;

import DAO.countryDAO;
import DAO.socDAO;
import VO.Country_VO;
import VO.Socdetail_VO;

/**
 * Servlet implementation class Country
 */
@WebServlet("/Country")
public class Country extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Country() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s= request.getParameter("flag");
		if(s.equals("search_country")) {
			searchCountry(request, response);
		}
		
		else if(s.equals("edit")){
			editCountry(request, response);
		}
		else if(s.equals("update")){
			updateCountry(request,response);
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
		
		String country_Name= request.getParameter("country");
		String country_Des= request.getParameter("description");
		
		Country_VO vo= new Country_VO();
		
		vo.setCountry_Name(country_Name);
		vo.setCountry_Des(country_Des);
		
		countryDAO dao= new countryDAO();
		dao.insert(vo);
		
		response.sendRedirect("Admin/add_country.jsp");
	}

	protected void searchCountry(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		countryDAO dao= new countryDAO();
		
		List search_List= dao.search();
		
		HttpSession s1= request.getSession();
		s1.setAttribute("search_Data",search_List);
		response.sendRedirect("Admin/search_country.jsp");
	}
	
	private void editCountry(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int country_Id = Integer.parseInt(request.getParameter("id"));
		
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		
		List ls=null;
		countryDAO dao = new countryDAO();
		ls= dao.edit(cvo);
		
		HttpSession session = request.getSession();
		session.setAttribute("country", ls);
		
		
		response.sendRedirect("Admin/search_country.jsp#edit");
	}
	
	private void updateCountry(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String country_Name= request.getParameter("country");
		String country_Des= request.getParameter("comment");
		int country_Id = Integer.parseInt(request.getParameter("country_Id"));
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		cvo.setCountry_Name(country_Name);
		cvo.setCountry_Des(country_Des);
		
		
		countryDAO dao= new countryDAO();
		dao.update(cvo);
		
		searchCountry(request,response);
	}
	
	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		int country_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		
		countryDAO dao= new countryDAO();
		if(!dao.delete(cvo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		searchCountry(request,response);
	}
}
	
	
	

