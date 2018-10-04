package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.Chairman_VO;
import VO.Event_VO;
import VO.Resident_VO;

public class eventDAO {
	
	public void insert(Event_VO evo) {
		// TODO Auto-generated method stub
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(evo);
			  
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
			
			Query q= session.createQuery("from Event_VO");
			search_List = q.list();
			
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		return search_List;
	}
	
	public List edit(Event_VO evo) {
		// TODO Auto-generated method stub
		List ls= null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from Event_VO where event_Id like '"+evo.getEvent_Id()+"'");
			
			ls= q.list();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}
	
	public Boolean delete(Event_VO cvo) {
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
	public void update(Event_VO cvo) {
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
}
