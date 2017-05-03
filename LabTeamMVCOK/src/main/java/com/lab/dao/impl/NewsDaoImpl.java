package com.lab.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.NewsDao;
import com.lab.entity.Recent;

@Repository
public class NewsDaoImpl implements NewsDao {
   
	@Resource
	private SessionFactory sessionFactory;

	public Recent list(String RUrl) {
		System.out.println(RUrl);
		String hql="from Recent N where N.RUrl=?";
		System.out.println(hql);
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setString(0, RUrl);
		Recent recent=(Recent) query.uniqueResult();
			
		tx.commit();
		session.close();
		return recent;
		
		
		
	}
	
	

	

}


		
