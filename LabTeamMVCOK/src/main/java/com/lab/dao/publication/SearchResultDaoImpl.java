package com.lab.dao.publication;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.entity.Inmeeting;
import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.entity.Publication;

@Repository
public class SearchResultDaoImpl implements SearchResultDao{
	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public int getCount(String hqls) {			//获取查询结果的条数
		final String hql=hqls;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List list=query.list();
		String li=list.get(0).toString();
		Integer count=Integer.parseInt(li);
		tx.commit();
		return count;
	}
	
	public List<Person> getPersonContent(String hqls,int pageoffset,int pageSize){
		final String hql=hqls;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(pageoffset);    //开始检索位置
		query.setMaxResults(pageSize);		 //最大记录行
		@SuppressWarnings("unchecked")
		List<Person> list=query.list();
		tx.commit();
		return list;
	}
	
	public List<Publication> getPublicationContent(String hqls,int pageoffset,int pageSize){
		final String hql=hqls;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(pageoffset);    //开始检索位置
		query.setMaxResults(pageSize);		 //最大记录行
		@SuppressWarnings("unchecked")
		List<Publication> list=query.list();
		tx.commit();
		return list;
	}
	
	public List<Paper> getPaperContent(String hqls,int pageoffset,int pageSize){
		final String hql=hqls;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(pageoffset);    //开始检索位置
		query.setMaxResults(pageSize);		 //最大记录行
		@SuppressWarnings("unchecked")
		List<Paper> list=query.list();
		tx.commit();
		return list;
	}
	
	public List<Inmeeting> getInmeetingContent(String hqls,int pageoffset,int pageSize){
		final String hql=hqls;
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(pageoffset);    //开始检索位置
		query.setMaxResults(pageSize);		 //最大记录行
		@SuppressWarnings("unchecked")
		List<Inmeeting> list=query.list();
		tx.commit();
		return list;
	}
}
