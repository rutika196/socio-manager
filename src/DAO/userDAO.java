package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;





import VO.User_VO;

public class userDAO {
		public void insert(User_VO uvo) {
			// TODO Auto-generated method stub
			try
			{
				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  
				  Session session =sessionFactory.openSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				  session.save(uvo);
				  
				  tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}

		public List check(User_VO vo) {
			// TODO Auto-generated method stub
			
			List l= new ArrayList();
			
			SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
			
			Session session = sessionfactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q = session.createQuery("from User_VO where un like '"+vo.getUn()+"' and pwd like '"+vo.getPwd()+"' ");
			
			tr.commit();
			
			return l=q.list();
		}

		public void update(User_VO vo) {
			// TODO Auto-generated method stub
			try
			{
				
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				
				Session session =sessionFactory.openSession();
				
				Transaction tr = session.beginTransaction(); 
				
				Query q= session.createQuery("update User_VO set email='"+vo.getEmail()+"' where u_Id='"+vo.getU_Id()+"'");
				
				q.executeUpdate();
				
				
				tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		
		}

	public void updatePswd(User_VO uvo) {
		// TODO Auto-generated method stub
		try
		{
			
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			
			Query q= session.createQuery("update User_VO set pwd='"+uvo.getPwd()+"' where un='"+uvo.getUn()+"'");
			
			q.executeUpdate();
		
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public List getEmail(User_VO uvo) {
		// TODO Auto-generated method stub
		
		List l= new ArrayList();
		
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		
		Session session = sessionfactory.openSession();
		
		Transaction tr = session.beginTransaction();
		
		Query q = session.createQuery("from Use_VO where un='"+uvo.getUn()+"' ");
		
		tr.commit();
		
		return l=q.list();
			
	}


		

		

}
