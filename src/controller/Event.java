package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import DAO.chairmanDAO;
import DAO.eventDAO;
import DAO.socDAO;
import VO.Chairman_VO;
import VO.Event_VO;

/**
 * Servlet implementation class Event
 */
@WebServlet("/Event")
public class Event extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Event() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s1= request.getParameter("flag");
		
		if(s1.equals("search_events")) {
			search_Event(request, response);
		}
		else if(s1.equals("edit")){
			edit(request, response);
		}
		else if(s1.equals("delete"))
		{
			delete(request,response);
		}
		else if(s1.equals("update"))
		{
			update(request,response);
		}
	}

	

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title= request.getParameter("event_name");
		String place= request.getParameter("place_name");
		String date_Time= request.getParameter("date");
		String about= request.getParameter("details");
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");

		Date d1 = null;
		try {
			d1 = format.parse(date_Time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Event_VO evo= new Event_VO();
		evo.setTitle(title);
		evo.setPlace(place);
		evo.setDate_Time(d1);
		evo.setAbout(about);
		
		eventDAO dao= new eventDAO();
		dao.insert(evo);
		
		response.sendRedirect("chairman/event.jsp");
	}
	
	
	private void search_Event(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		eventDAO dao= new eventDAO();
		List l=dao.search();
		
		HttpSession session= request.getSession();
		session.setAttribute("Search_Data", l);
		
		response.sendRedirect("chairman/search_events.jsp");
		
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int event_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		Event_VO cvo= new Event_VO();
		cvo.setEvent_Id(event_Id);
		
		eventDAO daoa= new eventDAO();
		if(!daoa.delete(cvo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		search_Event(request,response);
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
int event_Id = Integer.parseInt(request.getParameter("id"));
		
		Event_VO cvo= new Event_VO();
		cvo.setEvent_Id(event_Id);
		
		
		eventDAO dao= new eventDAO();
		List ls=dao.edit(cvo);
		
		HttpSession session = request.getSession();
		session.setAttribute("i", ls);
		session.setAttribute("event_id", event_Id);
	
		response.sendRedirect("chairman/edit_event.jsp");
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int event_Id = Integer.parseInt(request.getParameter("id"));
		String title= request.getParameter("event_name");
		String place= request.getParameter("place_name");
		String date_Time= request.getParameter("date");
		String about= request.getParameter("details");
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");

		Date d1 = null;
		try {
			d1 = format.parse(date_Time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Event_VO cvo= new Event_VO();
		cvo.setEvent_Id(event_Id);
		cvo.setTitle(title);
		cvo.setPlace(place);
		cvo.setDate_Time(d1);
		cvo.setAbout(about);
		
		eventDAO dao= new eventDAO();
		dao.update(cvo);
		
		search_Event(request, response);
	}
}
