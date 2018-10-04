package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;




import VO.Socdetail_VO;

public class socDAO {
	
	public void insert(Socdetail_VO vo1 )
	{
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(vo1);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	
	List ls= new ArrayList();
	public List search_society() {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
		Session session =sessionFactory.openSession();
		   
		Transaction tr = session.beginTransaction();
		
		Query q= session.createQuery("from Socdetail_VO");
		ls = q.list();
		tr.commit();
		return ls;
	

    }

	List searchList= new ArrayList();
	public List search() {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession(); 
			
			Query q = session.createQuery("from Socdetail_VO");
			searchList = q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return searchList;
	}

	
	public List edit(Socdetail_VO svo) {
		// TODO Auto-generated method stub
		List ls=null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from Socdetail_VO where soc_Id like '"+svo.getSoc_Id()+"'");
			
			ls= q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}

	public void update(Socdetail_VO svo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			session.saveOrUpdate(svo);
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
	public Boolean delete(Socdetail_VO svo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			
			session.delete(svo);
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			
			String s[]= ex.getCause()!=null?ex.getCause().toString().split(":"):null;
			

			if(s!=null && s[0].equals("java.sql.BatchUpdateException")){
			
			return false;
			}
		}
		return true;
		
	}


}


