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
import DAO.stateDAO;
import VO.Country_VO;
import VO.Socdetail_VO;
import VO.State_VO;

/**
 * Servlet implementation class Socirty_details
 */
@WebServlet("/Society_details")
public class Society_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Society_details() {
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
			
			response.sendRedirect("chairman/society.jsp");
			
		}
		
		
		String s1= request.getParameter("flag");
		if(s1.equals("search_society")) {
			searchSoc(request, response);
		}
		
		else if(s1.equals("edit")){
			editSoc(request, response);
		}
		else if(s1.equals("update")){
			updateSoc(request,response);
		}
		else if(s1.equals("delete"))
		{
			delete(request,response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		// TODO Auto-generated method stub
		
		String board_Name= request.getParameter("board_contact");
		String designation_Name= request.getParameter("designation");
		String society_Name= request.getParameter("society_full_name");
		int country_Id= Integer.parseInt(request.getParameter("country"));
		int state_Id= Integer.parseInt(request.getParameter("state"));
		String society_Add= request.getParameter("address");
		String association_Email= request.getParameter("email");
		long association_Contact= Long.parseLong(request.getParameter("phone_no"));
		int pincode= Integer.parseInt(request.getParameter("pincode"));
		int house_No= Integer.parseInt(request.getParameter("total_house"));
		String msg= request.getParameter("msgs");
		
		Country_VO cvo= new Country_VO(); 
		cvo.setCountry_Id(country_Id);
		
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		
		
		Socdetail_VO vo= new Socdetail_VO();
		vo.setBoard_Name(board_Name);
		vo.setDesignation_Name(designation_Name);
		vo.setSociety_Name(society_Name);
		vo.setSociety_add(society_Add);
		vo.setAssociation_Contact(association_Contact);
		vo.setAssociation_Email(association_Email);
		vo.setPincode(pincode);
		vo.setHouse_No(house_No);
		vo.setMsg(msg);
		vo.setState_Id(svo);
		vo.setCountry_Id(cvo);
		
		socDAO dao= new socDAO();
		dao.insert(vo);
		
		response.sendRedirect("chairman/society.jsp");
	}
	
	protected void searchSoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		socDAO dao= new socDAO();
		
		List search_List= dao.search();
		
		HttpSession s1= request.getSession();
		s1.setAttribute("search_Data",search_List);
		response.sendRedirect("Admin/search_society.jsp");
	}
	
	private void editSoc(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int soc_Id = Integer.parseInt(request.getParameter("id"));
		
		Socdetail_VO svo= new Socdetail_VO();
		svo.setSoc_Id(soc_Id);
		
		
		socDAO dao = new socDAO();
		List ls= dao.edit(svo);
		
		countryDAO d = new countryDAO();
		List l=d.search_country();
		stateDAO d1 = new stateDAO();
		List l1=d1.search_state();

		
		HttpSession session = request.getSession();
		session.setAttribute("society", ls);
		
		session.setAttribute("country_data", l);
		session.setAttribute("state_data", l1);
		
		response.sendRedirect("Admin/edit_society.jsp");
	}
	
	private void updateSoc(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String board_Name= request.getParameter("board_contact");
		String designation_Name= request.getParameter("designation");
		String society_Name= request.getParameter("society_full_name");
		
		String society_Add= request.getParameter("address");
		String association_Email= request.getParameter("email");
		long association_Contact= Long.parseLong(request.getParameter("phone_no"));
		int pincode= Integer.parseInt(request.getParameter("pincode"));
		int house_No= Integer.parseInt(request.getParameter("total_house"));
		String msg= request.getParameter("msgs");
		
		int country_Id= Integer.parseInt(request.getParameter("country"));
		int state_Id= Integer.parseInt(request.getParameter("state"));
		
		Country_VO cvo= new Country_VO(); 
		cvo.setCountry_Id(country_Id);
		
		State_VO svo= new State_VO();
		svo.setState_Id(state_Id);
		
		int soc_Id = Integer.parseInt(request.getParameter("id"));
		
		Socdetail_VO vo= new Socdetail_VO();
		vo.setSoc_Id(soc_Id);
		vo.setBoard_Name(board_Name);
		vo.setDesignation_Name(designation_Name);
		vo.setSociety_Name(society_Name);
		vo.setSociety_add(society_Add);
		vo.setAssociation_Contact(association_Contact);
		vo.setAssociation_Email(association_Email);
		vo.setPincode(pincode);
		vo.setHouse_No(house_No);
		vo.setMsg(msg);
		vo.setState_Id(svo);
		vo.setCountry_Id(cvo);
		
		
		
		socDAO dao= new socDAO();
		dao.update(vo);
		searchSoc(request,response);
		

	}
	
	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		int soc_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		Socdetail_VO svo= new Socdetail_VO();
		svo.setSoc_Id(soc_Id);
		
		socDAO dao= new socDAO();
		if(!dao.delete(svo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		searchSoc(request,response);
	}
	
	
}
	
	

