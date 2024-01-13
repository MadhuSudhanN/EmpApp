package com.Service;

import java.util.Collections;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.DAO.DeptSort;
import com.DAO.EmailSort;
import com.DAO.EmpEntity;
import com.DAO.NameSort;

public class Sort {
	public static List<EmpEntity> ms()
	{
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Query<EmpEntity> q=s.createQuery("from EmpEntity") ;
		
		List<EmpEntity> list=q.getResultList();
		
		
		return list;

	}
}
