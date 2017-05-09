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
import com.lab.entity.Recent;
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
	
	public Project getProject(String Prid){
		String hql="from Project p where p.Prid="+Prid;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		Project pr=(Project)query.uniqueResult();
		tx.commit();
		return pr;
	}
	
	@SuppressWarnings("unchecked")
	public List<Recent> getAboutRecents(String Prid){
		String hql="from Recent r where r.RProjectId="+Prid;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Recent> re=query.list();
		tx.commit();
		return re;
	}
	
}
