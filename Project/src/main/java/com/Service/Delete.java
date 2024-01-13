package com.Service;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.DAO.EmpEntity;

public class Delete {
	public static void del(int id )
	{

		
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Transaction tx=	s.beginTransaction();
		EmpEntity sd =s.get(EmpEntity.class, id);
		s.delete(sd);
		
		
		tx.commit();
	}
	
}
