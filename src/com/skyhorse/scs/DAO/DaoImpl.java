package com.skyhorse.scs.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.stereotype.Repository;



import com.skyhorse.scs.Bean.AdminBean;
import com.skyhorse.scs.Bean.RegisterBean;



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


	@Override
	public String insertData(String UserID, String Uname,
			String password, String UserEmail, String phone, String Address,
			String SecQue, String SecAns, String UserRole) {
		
	
		 
		 String yes="SUCCESS";
		 String no="FAILURE";
		 
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
		    	  RegisterBean RegData = new RegisterBean();
		    	  RegData.setUserID(UserID);
		    	  RegData.setUNAME(Uname);
		    	  RegData.setPSSWD(password);
		    	  RegData.setEmail(UserEmail);
		    	  RegData.setPhone(phone);
		    	  RegData.setAddress(Address);
		    	  RegData.setSec_que(SecQue);
		    	  RegData.setSec_ans(SecAns);
		    	  RegData.setRole(UserRole);
		    	  
		    	  
		    	  
			         System.out.println("**********HIBERNATE QUERY FOR INSERTING EMPLOYEE DATA********");
			         session.save(RegData); 
			         tx.commit();
			         System.out.println("*************************************************************");
			       
			        /* System.out.println("Employee Id: "+employee.getEmpId());
			         System.out.println("Employee NAME: "+employee.getEmpName());
			         System.out.println("Employee ADDRESS: "+employee.getAddress());*/
			     
			         System.out.println("*************************************************************");
			         
		    	  
		    	  
		    	  
		    	  
		    	  
		      }
		      catch (HibernateException e) {
			    	 e.printStackTrace();
			    	 
			         if (tx!=null) tx.rollback();
			         return no;
			      }finally {
			         session.close(); 
			         return yes;
			      }				
	}



	@Override
	public void updatePassword(String UserId, String oldPassword,
			String newPassword) {
		
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
			         String hql = "UPDATE RegisterBean set PSSWD ='"+newPassword+"' WHERE UserID ='"+UserId+"'";
			       
			         Query query = session.createQuery(hql);
			        
			        
			         int result = query.executeUpdate();
			        
			         
			        
			         tx.commit();
			      }catch (HibernateException e) {
			    	 e.printStackTrace();
			         if (tx!=null) tx.rollback();
			      }finally {
			         session.close(); 
			         
			      }		 
		
		
		
	}

	
	

}
