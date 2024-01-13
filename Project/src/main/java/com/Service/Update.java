package com.Service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.DAO.EmpEntity;

public class Update {
	public static String  uName(int id ,String Name)
	{

		
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Transaction tx=	s.beginTransaction();
		EmpEntity sd =s.get(EmpEntity.class, id);
		sd.setName(Name);
		s.update(sd);
		
		
		tx.commit();
		if(sd==null)
{	
			return "no";
		}
		else
		{
			return "yes";
		}
	}
	public static void uEmail(int id ,String email)
	{

		
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Transaction tx=	s.beginTransaction();
		EmpEntity sd =s.get(EmpEntity.class, id);
		sd.setEmail(email);
		s.update(sd);
		
		tx.commit();
	}
	public static void uDep(int id ,String dep)
	{

		
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Transaction tx=	s.beginTransaction();
		EmpEntity sd =s.get(EmpEntity.class, id);
		sd.setDeptName(dep);
		s.update(sd);
		
		tx.commit();
	}
	public static void uPhn(int id ,String ph)
	{

		
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Transaction tx=	s.beginTransaction();
		EmpEntity sd =s.get(EmpEntity.class, id);
		sd.setPhoneNum(ph);
		s.update(sd);
		
		tx.commit();
	}
	
}
