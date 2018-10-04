package controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import javax.servlet.http.HttpSession;

import DAO.chairmanDAO;
import DAO.countryDAO;
import DAO.socDAO;
import DAO.userDAO;
import VO.Chairman_VO;
import VO.Country_VO;
import VO.Socdetail_VO;
import VO.User_VO;

/**
 * Servlet implementation class Chairman
 */
@WebServlet("/Chairman")
public class Chairman extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chairman() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String s1= request.getParameter("flag");
		
		if(s1.equals("search_chairman")) {
			search_Chairman(request, response);
		}
		else if(s1.equals("edit")){
			editChairman(request, response);
		}
		
		else if(s1.equals("update")){
			updateChairman(request,response);
		}
	
		else if(s1.equals("delete"))
		{
			delete(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
protected void sendMail(String email,int msg){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

         try {
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent("<h1>your pwd is  "+msg+" Code</h1>"
            		+ "Login into system by using your enrollment as username and password"
            		+ "","text/html" );
            message.setSubject("your pwd");
            
            InternetAddress sender = new InternetAddress("rp1961994@gmail.com", "Administrator");
             InternetAddress receiver = new InternetAddress(email);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "rp1961994@gmail.com", "hereiam123");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                      
        } catch (Exception e) {
            System.out.println("err = " + e);
         }
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String soc_Name= request.getParameter("soc_name");
		String chairman_Name= request.getParameter("name");
		long chairman_contact= Long.parseLong(request.getParameter("cno"));
		String chairman_Add= request.getParameter("address");
		String chairman_Email= request.getParameter("email_add");
		
		Chairman_VO vo= new Chairman_VO();
		vo.setChairman_Name(chairman_Name);
		vo.setChairman_contact(chairman_contact);
		vo.setSoc_Name(soc_Name);
		vo.setChairman_Add(chairman_Add);
		vo.setChairman_Email(chairman_Email);
		
		Random r = new Random();
		int pwd = r.nextInt();
		
		User_VO uvo = new User_VO();
		uvo.setEmail(chairman_Email);
		uvo.setUn(chairman_Name);
		uvo.setPwd(String.valueOf(pwd));
		uvo.setType("chairman");
		userDAO udao = new userDAO();
		udao.insert(uvo);
		
		chairmanDAO dao= new chairmanDAO();
		dao.insert(vo);
		
		sendMail(chairman_Email, pwd);
		
		response.sendRedirect("Admin/add_chairman.jsp");
	}

	private void search_Chairman(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		chairmanDAO dao= new chairmanDAO();
		List l=dao.search();
		
		HttpSession session= request.getSession();
		session.setAttribute("search_Data", l);
		
		response.sendRedirect("Admin/search_chairman.jsp");
		
	}
	
	private void editChairman(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int chairman_Id = Integer.parseInt(request.getParameter("id"));
		
		Chairman_VO cvo= new Chairman_VO();
		cvo.setChairman_Id(chairman_Id);
		
		chairmanDAO dao= new chairmanDAO();
		List ls=dao.edit(cvo);
		socDAO d = new socDAO();
		List l=d.search_society();
		
		HttpSession session = request.getSession();
		session.setAttribute("ch", ls);
		session.setAttribute("soc_list", l);
	
		response.sendRedirect("Admin/search_chairman.jsp#edit");
	}

	
	private void updateChairman(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int chairman_Id = Integer.parseInt(request.getParameter("id"));
		String chairman_Name= request.getParameter("name");
		long chairman_contact= Long.parseLong(request.getParameter("cno"));
	
		String chairman_Add= request.getParameter("address");
		String chairman_Email= request.getParameter("email_add");
		String soc_Name= request.getParameter("soc_name");
		
		
		Chairman_VO cvo= new Chairman_VO();
		cvo.setChairman_Id(chairman_Id);
		cvo.setChairman_Name(chairman_Name);
		cvo.setChairman_contact(chairman_contact);
		cvo.setSoc_Name(soc_Name);
		cvo.setChairman_Email(chairman_Email);
		cvo.setChairman_Add(chairman_Add);
		
		chairmanDAO dao= new chairmanDAO();
		dao.update(cvo);
		
		search_Chairman(request, response);
	}

	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		int chairman_Id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		Chairman_VO cvo= new Chairman_VO();
		cvo.setChairman_Id(chairman_Id);
		
		chairmanDAO dao= new chairmanDAO();
		if(!dao.delete(cvo))
		{
				session.setAttribute("error", "pls remove child row 1st");
		}
		else
		{
			session.removeAttribute("error");
		}
		
		search_Chairman(request,response);
	}

	
}
