package com.Service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.DAO.EmpEntity;

public class Insert {
	public static void ms(int id,String name,String email,String DeptName,String phnum )
	{


		Integer id1=id;
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Transaction tx=	s.beginTransaction();
		EmpEntity e=new EmpEntity(id,name,email,DeptName,phnum);
		Serializable sd=s.save(e);
		System.out.println(id1.equals(sd));
		tx.commit();




	}
}
