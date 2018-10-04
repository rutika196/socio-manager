package controller;

import java.io.IOException;
import java.util.Iterator;
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

import DAO.userDAO;

import VO.User_VO;

/**
 * Servlet implementation class forgot
 */
@WebServlet("/forgot")
public class forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgot() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s= request.getParameter("flag");
		
		if(s.equals("changePswd"))
		{
			changePswd(request,response);
		}
		
	}
	
protected void sendMail(String email,int msg){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

         try {
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent("<h1>your new pwd is ' "+msg+" '</h1>"
            		+ "Login into system by using your enrollment as username and password"
            		+ "","text/html" );
            message.setSubject("New Password");
            
            InternetAddress sender = new InternetAddress("socio.manager@gmail.com", "Administrator");
             InternetAddress receiver = new InternetAddress(email);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "socio.manager@gmail.com", "pari@rutu");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                      
        } catch (Exception e) {
            System.out.println("err = " + e);
         }
		
	}
	
protected void forgotpass(String email, String link) {
	
	java.util.Properties properties = new java.util.Properties();
    properties.put("mail.smtp.auth", "true");
     properties.put("mail.smtp.starttls.enable", "true");
     javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
     String finallink = link+"email="+email;
    
    

     try {
        MimeMessage message = new MimeMessage(mailSession);

       
        message.setContent("<h1>D network</h1>"
        		+"<p> Reset link: <a href="+finallink+">Click here to reset pass.</a></p>"
        		+ "","text/html" );
        message.setSubject("Reset link ");
        
        InternetAddress sender = new InternetAddress("harshil1793@gmail.com");
         InternetAddress receiver = new InternetAddress(email);
        message.setFrom(sender);
        message.setRecipient(javax.mail.Message.RecipientType.TO, receiver);
         message.saveChanges();
        
        javax.mail.Transport transport = mailSession.getTransport("smtp");
        transport.connect("smtp.gmail.com",587, "istuffs69@gmail.com", "desirepin");
         transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        
    } catch (Exception e) {
        System.out.println("err = " + e);
     }
	
}
	private void changePswd(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		//String email= request.getParameter("email");
		String un= request.getParameter("username");
		
		Random r = new Random();
		int pwd = r.nextInt();
		
		User_VO uvo = new User_VO();
		uvo.setUn(un);
		uvo.setPwd(String.valueOf(pwd));
		
		userDAO udao = new userDAO();
		udao.updatePswd(uvo);
		
		List list = udao.getEmail(uvo);
		
		Iterator iterator = list.iterator();
		User_VO vo= (User_VO) iterator.next();
		
		String email = vo.getEmail();
		sendMail(email, pwd);
		
		response.sendRedirect("login.jsp");
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
