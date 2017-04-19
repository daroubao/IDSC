package com.lab.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.AdminDao;
import com.lab.entity.Admin;
import com.lab.entity.Paper;
import com.lab.entity.Person;

/**
 * @author By蓝十七
 * @version 创建时间：2017年4月4日 下午9:02:50
 * 
 */
@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		String hql="from Admin where Aname=? and Apassword=?";
		System.out.println(admin.getAname());
		System.out.println(admin.getApassword());
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setParameter(0, admin.getAname());
		query.setParameter(1, admin.getApassword());
		
		List<Admin> list=query.list();
		tx.commit();
		if(list.size()>0){
			System.out.println(list.get(0).getAname());
			System.out.println(list.get(0).getApassword());
			return list.get(0);
		}
		return null;
	}

	@Override
	public void savePerson(Person person) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(person);
		
		tx.commit();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Paper> getPapers() {
		// TODO Auto-generated method stub
		String hql="from Paper";
		
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Paper> list=query.list();
		tx.commit();
		return list;
	}

	@Override
	public void savePaper(Paper paper) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(paper);
		
		tx.commit();
	}

}
