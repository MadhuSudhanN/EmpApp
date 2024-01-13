package com.Service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.DAO.EmpEntity;

public class Search {
	public static List main(String name){
		
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Query q=s.createQuery("from EmpEntity where name like '%".concat(StringFormatte.mS(name))+"%'") ;
		List<EmpEntity> l=q.list();
		return l;
       
	}
}
