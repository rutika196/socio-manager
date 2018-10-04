package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.chairmanDAO;
import DAO.residentDAO;
import DAO.socDAO;
import VO.Chairman_VO;
import VO.Resident_VO;

/**
 * Servlet implementation class Resident
 */
@WebServlet("/Resident")
public class Resident extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Resident() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			String s1= request.getParameter("flag");
					
					if(s1.equals("search_resident")) {
						search_Residents(request, response);
					}
					
					else if(s1.equals("edit")){
						editResident(request, response);
					}
					
					else if(s1.equals("update")){
						updateResident(request,response);
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
		
		String resident_Name= request.getParameter("resident_fname");
		int house_No= Integer.parseInt(request.getParameter("house_no"));
		String wing_Add= request.getParameter("Wing_address");

		long resident_Contact= Long.parseLong(request.getParameter("mobile_no"));
		long alternative_No= Long.parseLong(request.getParameter("alternative_no"));
		String occupation_Add= request.getParameter("bussiness_address");
		String resident_Email= request.getParameter("email");
		long emergancy_No= Long.parseLong(request.getParameter("e_no"));
		
		/*String user_type = request.getParameter("radio");*/
		
		
		Resident_VO rvo =  new Resident_VO();
		rvo.setResident_Name(resident_Name);
		/*rvo.setResidential_type(user_type);*/
		rvo.setResident_Contact(resident_Contact);
		rvo.setAlternative_No(alternative_No);
		rvo.setHouse_No(house_No);
		rvo.setWing_Add(wing_Add);
		rvo.setOccupation_Add(occupation_Add);
		rvo.setEmergancy_No(emergancy_No);
		rvo.setResident_Email(resident_Email);
		
		residentDAO dao = new residentDAO();
		dao.insert(rvo);
		/*if(user_type.equals("Committee"))
		{
			chairmanDAO cdao= new chairmanDAO();
			List l=cdao.search();
			
			HttpSession session= request.getSession();
			session.setAttribute("search_Data", l);
			response.sendRedirect("search_committee.jsp");
		}
		else if(user_type.equals("Resident")) {
			residentDAO rdao= new residentDAO();
			List l=rdao.search();
			
			HttpSession session= request.getSession();
			session.setAttribute("search_Data", l);
			response.sendRedirect("search_residents.jsp");
		}
		else {
			
		}*/
		
		response.sendRedirect("chairman/add_residents.jsp");
		
	}
	
	private void search_Residents(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		residentDAO dao= new residentDAO();
		List l=dao.search();
		
		HttpSession session= request.getSession();
		session.setAttribute("search_Data", l);
		
		response.sendRedirect("chairman/search_residents.jsp");
		
	}
	
	private void editResident(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int resident_Id = Integer.parseInt(request.getParameter("id"));
		
		Resident_VO rvo= new Resident_VO();
		rvo.setResident_Id(resident_Id);
		
		residentDAO dao= new residentDAO();
		List ls=dao.edit(rvo);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("resident", ls);
		
	
		response.sendRedirect("chairman/edit_residents.jsp");
	}

	
	private void updateResident(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int resident_Id = Integer.parseInt(request.getParameter("id"));
		
		String resident_Name= request.getParameter("resident_fname");
		int house_No= Integer.parseInt(request.getParameter("house_no"));
		String wing_Add= request.getParameter("Wing_address");

		long resident_Contact= Long.parseLong(request.getParameter("mobile_no"));
		long alternative_No= Long.parseLong(request.getParameter("alternative_no"));
		String occupation_Add= request.getParameter("bussiness_address");
		String resident_Email= request.getParameter("email");
		long emergancy_No= Long.parseLong(request.getParameter("e_no"));
		
		Resident_VO rvo =  new Resident_VO();
		rvo.setResident_Id(resident_Id);
		rvo.setResident_Name(resident_Name);
		rvo.setResident_Contact(resident_Contact);
		rvo.setAlternative_No(alternative_No);
		rvo.setHouse_No(house_No);
		rvo.setWing_Add(wing_Add);
		rvo.setOccupation_Add(occupation_Add);
		rvo.setEmergancy_No(emergancy_No);
		rvo.setResident_Email(resident_Email);
		
		residentDAO dao = new residentDAO();

		dao.update(rvo);
		
		search_Residents(request, response);
	}

	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		int resident_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		Resident_VO rvo= new Resident_VO();
		rvo.setResident_Id(resident_Id);
		residentDAO dao = new residentDAO();
		
		if(!dao.delete(rvo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		search_Residents(request,response);
	}



}
