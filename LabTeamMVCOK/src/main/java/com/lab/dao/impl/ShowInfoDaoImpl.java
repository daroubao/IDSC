package com.lab.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.ShowInfoDao;
import com.lab.entity.Person;

@Repository
public class ShowInfoDaoImpl implements ShowInfoDao {
	
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	
	@Override
	public Person findByName(String Pname) {
		// TODO Auto-generated method stub
		/*Session session=sessionFactory.getCurrentSession();
		//String hql=" from Person p where p.Pname='JiMingLiu'";
		String hql=" from Person p where p.Pname=Pname";
		Transaction tx=session.beginTransaction();
		
		Query query=session.createQuery(hql);
		
		
		Person p=(Person) query.uniqueResult();
		tx.commit();
		return p;*/
		
		Session session=sessionFactory.getCurrentSession();
		String hql=" from Person p where p.Pname=?";
		Transaction tx=session.beginTransaction();
		
		Query query=session.createQuery(hql);
		query.setParameter(0, Pname);
		
		@SuppressWarnings("unchecked")
		List<Person> list=query.list();
		tx.commit();
		if(list.size()>0){
			return list.get(0);
		}
		
		return null;
		
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Person> getPersons() {
		// TODO Auto-generated method stub
		/*Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=(Query) session.createCriteria(Person.class);
		List<Person> list=query.list();
		tx.commit();*/
		
		
		String hql="from Person";
		
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List <Person> list=query.list();
		tx.commit();
		return list;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Person> findByPosition(String Pposition) {
		// TODO Auto-generated method stub
		String hql="from Person p where p.Pposition=?";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setParameter(0, Pposition);
		List <Person> list=query.list();
		tx.commit();
		return list;
	}

	
	/*
	 * (non-Javadoc)通过职位查找
	 * @see com.lab.dao.ShowInfoDao#findAssociate_Fellow()
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Person> findAssociate_Fellow() {
		// TODO Auto-generated method stub
		String hql="from Person p where p.Pposition='Associate_Fellow'";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List <Person> list=query.list();
		tx.commit();
		return list;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Person> findChair_Professor() {
		// TODO Auto-generated method stub
		String hql="from Person p where p.Pposition='Chair_Professor'";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List <Person> list=query.list();
		tx.commit();
		return list;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Person> findLecturer() {
		// TODO Auto-generated method stub
		String hql="from Person p where p.Pposition='Lecturer'";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List <Person> list=query.list();
		tx.commit();
		return list;
	}
	
	
}
