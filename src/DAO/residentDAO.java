package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;





import VO.Chairman_VO;
import VO.Resident_VO;

public class residentDAO {
	
	public void insert(Resident_VO rvo) {
		// TODO Auto-generated method stub
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(rvo);
			  
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
			
			Query q= session.createQuery("from Resident_VO");
			search_List = q.list();
			
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		return search_List;
	}

	public List edit(Resident_VO rvo) {
		// TODO Auto-generated method stub
		List ls= null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from Resident_VO where resident_Id like '"+rvo.getResident_Id()+"'");
			
			ls= q.list();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}
	
	public void update(Resident_VO rvo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			session.saveOrUpdate(rvo);
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public Boolean delete(Resident_VO rvo) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			
			session.delete(rvo);
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
