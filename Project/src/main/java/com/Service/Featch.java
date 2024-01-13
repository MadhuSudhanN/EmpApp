package com.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.DAO.*;
public class Featch
{
	public static List<EmpEntity> ms(){
		Configuration con=	new Configuration();
		con.configure("hibernate.cfg.xml");
		con.addAnnotatedClass(EmpEntity.class);
		SessionFactory sf= con.buildSessionFactory();
		Session s=sf.openSession();
		Query q=s.createQuery("from EmpEntity") ;
		return q.list();

	}

}
