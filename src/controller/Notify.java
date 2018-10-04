package controller;

import java.io.IOException;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.notifyDAO;
import DAO.residentDAO;
import VO.NotifyVO;
import VO.Resident_VO;

/**
 * Servlet implementation class Notify
 */
@WebServlet("/Notify")
public class Notify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title= request.getParameter("title");
		String message= request.getParameter("message");
		
		NotifyVO vo = new NotifyVO();
		vo.setTitle(title);
		vo.setMessage(message);
		
		notifyDAO dao = new notifyDAO();
		dao.insert(vo);
		
		response.sendRedirect("chairman/send_notification.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
