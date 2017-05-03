package com.lab.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.AboutUsDao;
import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;
@Repository
public class AboutUsDaoImpl implements AboutUsDao {
	@Resource
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	@Override
	public List<Cscholar> getScholars() {
		String hql="from Cscholar";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Cscholar> cs=query.list();
		tx.commit();
		return cs;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Corganization> getOrganizations() {
		String hql="from Corganization";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Corganization> co=query.list();
		tx.commit();
		return co;
	}
	@SuppressWarnings("unchecked")
	public List<Project> getProjects(){
		String hql="from Project";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Project> pr=query.list();
		tx.commit();
		return pr;
	}
}
