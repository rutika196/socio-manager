package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.Complaint_VO;

public class complaintDAO {

	public void insert(Complaint_VO cvo) {
		// TODO Auto-generated method stub
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			 
			  session.save(cvo);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	List searchList= new ArrayList();
	public List search() {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession(); 
			
			Query q = session.createQuery("from Complaint_VO");
			searchList = q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return searchList;
	}
	public boolean delete(Complaint_VO cvo) {
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
	public List reply(Complaint_VO cvo) {
		// TODO Auto-generated method stub
		List ls=null;
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Query q = session.createQuery("from Complaint_VO where complaint_Id like '"+cvo.getComplaint_Id()+"'");
			
			ls= q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}
	
	public void setStatus(Complaint_VO cvo) {
		// TODO Auto-generated method stub
		try
		{
			
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction(); 
			
			Query q= session.createQuery("update Complaint_VO set status='"+cvo.getStatus()+"' where complaint_Id='"+cvo.getComplaint_Id()+"'");
			
			q.executeUpdate();
		
			tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
