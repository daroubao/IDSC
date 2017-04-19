package com.lab.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.ContactUsDao;
import com.lab.entity.ContactUs;

@Repository
public class ContactUsDaoImpl implements ContactUsDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	public  void save(ContactUs cu){
		System.out.println("Dao中的方法被执行");
		
		Session session=sessionFactory.getCurrentSession();
		System.out.println(session!=null);
		Transaction tx=session.beginTransaction();
		session.save(cu);
		
		tx.commit();
		
	}
	
}
