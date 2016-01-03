package com.skyhorse.scs.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.stereotype.Repository;

import com.skyhorse.scs.Bean.AdminBean;



@Repository
public class DaoImpl implements DaoService {

	
	@SuppressWarnings("unused")
	private static SessionFactory factory;	

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<AdminBean> loginVerify(String uname) {
		// TODO Auto-generated method stub
		System.out.println("entering hibernate..");
		 List<AdminBean> adminVar=new ArrayList<AdminBean>();
		SessionFactory factory=new DaoImpl(){
			 SessionFactory getFactory(){
				 SessionFactory factory=new AnnotationConfiguration().configure().buildSessionFactory();
				 return factory;
			 }
		 }.getFactory();
		 
			Session session = factory.openSession();
		      Transaction tx = null;
		      try{
		         tx = session.beginTransaction();
		         String queryS="from AdminBean where uname='"+uname+"'";
		         System.out.println("**********HIBERNATE QUERY FOR LOGIN PROCESS********"+queryS);
		         
		         adminVar=(List<AdminBean>)session.createQuery(queryS).list();
		         
		        
		         tx.commit();
		      }catch (HibernateException e) {
		    	 e.printStackTrace();
		         if (tx!=null) tx.rollback();
		      }finally {
		         session.close(); 
		         return adminVar;
		      }		  
		
		
	}

	

}
