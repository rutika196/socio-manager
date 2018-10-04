package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.cityDAO;
import DAO.countryDAO;
import DAO.stateDAO;
import VO.City_VO;
import VO.Country_VO;
import VO.State_VO;

/**
 * Servlet implementation class City
 */
@WebServlet("/City")
public class City extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public City() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s= request.getParameter("flag");
		if(s.equals("loadData"))
		{
			
			countryDAO countryDAO = new countryDAO();
			List l = countryDAO.search_country();
			
			stateDAO stateDAO = new stateDAO();
			List l1 = stateDAO.search_state();
			
			HttpSession session= request.getSession();
			session.setAttribute("country_list", l);
			session.setAttribute("state_list", l1);
			
			response.sendRedirect("Admin/add_city.jsp");
			
		}
		
		String s1= request.getParameter("flag");
		if(s1.equals("search_city")) {
			searchCity(request, response);
		}
		
		else if(s1.equals("edit")){
			editCity(request, response);
		}
		
		else if(s1.equals("update")){
			updateCity(request,response);
		}
		
		else if(s1.equals("delete"))
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
		int state_Id= Integer.parseInt(request.getParameter("state"));
		String city_Name= request.getParameter("city");
		String area_Name= request.getParameter("area");
		int pincode_No= Integer.parseInt(request.getParameter("pn"));
		String area_Detail= request.getParameter("comment");
		
	
		
		
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		
		
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		
		City_VO vo= new City_VO();
		vo.setCity_Name(city_Name);
		vo.setArea_Name(area_Name);
		vo.setPincode_No(pincode_No);
		vo.setArea_Detail(area_Detail);
		vo.setCountry_Id(cvo);
		vo.setState_Id(svo);
		cityDAO dao= new cityDAO();
		dao.insert(vo);
		
		
		response.sendRedirect("Admin/add_city.jsp");

	}

	private void searchCity(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		cityDAO d= new cityDAO();
		List l=d.search();
		
		HttpSession session= request.getSession();
		session.setAttribute("search_Data", l);
		
		response.sendRedirect("Admin/search_city.jsp");
		
	}
	
	private void editCity(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int city_Id = Integer.parseInt(request.getParameter("id"));
		
		City_VO tvo= new City_VO();
		tvo.setCity_Id(city_Id);
		
		cityDAO dao= new cityDAO();
		List ls=dao.edit(tvo);
		countryDAO d = new countryDAO();
		List l=d.search_country();
		stateDAO d1 = new stateDAO();
		List l1=d1.search_state();
		
		HttpSession session = request.getSession();
		session.setAttribute("city", ls);
		session.setAttribute("country_data", l);
		session.setAttribute("state_data", l1);
	
		response.sendRedirect("Admin/search_city.jsp#edit");
	}

	
	private void updateCity(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int city_Id = Integer.parseInt(request.getParameter("city_Id"));
		String city_Name= request.getParameter("city");
		String area_Name= request.getParameter("area");
		int pincode_No= Integer.parseInt(request.getParameter("pn"));
		String area_Detail= request.getParameter("comment");
		
		
		int country_Id= Integer.parseInt(request.getParameter("country"));
		int state_Id= Integer.parseInt(request.getParameter("state"));
	
		Country_VO cvo= new Country_VO();
		cvo.setCountry_Id(country_Id);
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		
		City_VO tvo= new City_VO();
		tvo.setCity_Id(city_Id);
		tvo.setCity_Name(city_Name);
		tvo.setArea_Name(area_Name);
		tvo.setPincode_No(pincode_No);
		tvo.setArea_Detail(area_Detail);
		tvo.setCountry_Id(cvo);
		tvo.setState_Id(svo);
		
		cityDAO dao= new cityDAO();
		dao.update(tvo);
		
		searchCity(request, response);
	}

	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		int city_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		City_VO tvo= new City_VO();
		tvo.setCity_Id(city_Id);
		
		cityDAO dao= new cityDAO();
		if(!dao.delete(tvo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		searchCity(request,response);
	}


	

	
}
