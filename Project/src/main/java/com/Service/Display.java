package com.Service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.DAO.EmpEntity;

public class Display {
	public EmpEntity ms(int id) {
       SessionFactory sf=new Configuration().configure().addAnnotatedClass(EmpEntity.class).buildSessionFactory();
       Session s=sf.openSession();
      return s.get(EmpEntity.class, id);
       
       
	}


}
