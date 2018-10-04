package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.Country_VO;
import VO.Socdetail_VO;


public class countryDAO {
	public void insert(Country_VO vo1 )
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
	
	public List search_country() {
		// TODO Auto-generated method stub
		List ls= new ArrayList();
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
		Session session =sessionFactory.openSession();
		   
		Transaction tr = session.beginTransaction();
		
		Query q= session.createQuery("from Country_VO");
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
			
			Query q = session.createQuery("from Country_VO");
			searchList = q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return searchList;
	}

	
	public List edit(Country_VO cvo) {
		// TODO Auto-generated method stub
		List ls=null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from Country_VO where country_Id like '"+cvo.getCountry_Id()+"'");
			
			ls= q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}


	public void update(Country_VO cvo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			session.saveOrUpdate(cvo);
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
	public Boolean delete(Country_VO cvo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			
			session.delete(cvo);
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




