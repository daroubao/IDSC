package com.lab.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.InMeetingDao;
import com.lab.entity.Inmeeting;

@Repository
public class InMeetingDaoImpl implements InMeetingDao{
	
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Inmeeting> list(){
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Inmeeting";
		List<Inmeeting> list=session.createQuery(hql).list();
		tx.commit();
		session.close();
		return list;
	}
	

}
