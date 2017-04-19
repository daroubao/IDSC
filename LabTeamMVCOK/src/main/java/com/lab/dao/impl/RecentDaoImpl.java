package com.lab.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.RecentDao;
import com.lab.entity.Recent;

@Repository
public class RecentDaoImpl implements RecentDao {
   
	@Resource
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Recent> list() {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String hql="from Recent";
		List<Recent> list=session.createQuery(hql).list();
			
		tx.commit();
		return list;
		
		
		
	}
	
	

	

}


		
