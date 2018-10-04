package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.City_VO;
import VO.State_VO;

public class cityDAO {

	public void insert(City_VO vo) {
		// TODO Auto-generated method stub
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(vo);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	
	
	public List search() {

		List search_List= new ArrayList();
		// TODO Auto-generated method stub
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			Session session =sessionFactory.openSession();
			
			Query q= session.createQuery("from City_VO");
			search_List = q.list();
			
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		return search_List;
	}
	
	public List edit(City_VO tvo) {
		// TODO Auto-generated method stub
		List ls= null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from City_VO where city_Id like '"+tvo.getCity_Id()+"'");
			
			ls= q.list();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}

	public void update(City_VO tvo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			session.saveOrUpdate(tvo);
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public Boolean delete(City_VO tvo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			
			session.delete(tvo);
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
