package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.Chairman_VO;
import VO.Country_VO;
import VO.State_VO;

public class stateDAO {
	
	public void insert(State_VO vo) {
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
	
	
	public List search_state() {
		// TODO Auto-generated method stub
		List ls1= new ArrayList();
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
		Session session =sessionFactory.openSession();
		   
		Transaction tr = session.beginTransaction();
		
		Query q1= session.createQuery("from State_VO");
		ls1 = q1.list();
		tr.commit();
		return ls1;
	



	}
	
	public List search() {

		List search_List= new ArrayList();
		// TODO Auto-generated method stub
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			Session session =sessionFactory.openSession();
			
			Query q= session.createQuery("from State_VO");
			search_List = q.list();
			
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		return search_List;
	}


	public List edit(State_VO svo) {
		// TODO Auto-generated method stub
		List ls= null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from State_VO where state_Id like '"+svo.getState_Id()+"'");
			
			ls= q.list();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}

	public void update(State_VO svo) {
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

	public Boolean delete(State_VO svo) {
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
