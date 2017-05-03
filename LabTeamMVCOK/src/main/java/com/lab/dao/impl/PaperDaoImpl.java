package com.lab.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.dao.PaperDao;
import com.lab.entity.Paper;


/**
 * @author By蓝十七
 * @version 创建时间：2017年3月26日 下午3:51:02
 * 
 */
@Repository
public class PaperDaoImpl implements PaperDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Paper> findMaxDate(int Pid) {
		// TODO Auto-generated method stub
		//String hql=" from Paper where PAdate=(select max(PAdate) from Paper) ";
		//String hql="from Connectpap conn inner join Paper pa on conn.PAidC=pa.PAid where conn.PidC=2 and PAdate=(select max(PAdate) from Paper) order by PAdate desc";
		String hql="select * from connectpap conn inner join paper pa on conn.PAidC=pa.PAid where conn.PidC=? and PAdate=(select max(PAdate) from paper) order by PAdate desc";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query1=session.createSQLQuery(hql).addEntity(Paper.class);
		query1.setParameter(0, Pid);
		//Query query=session.createQuery(hql);
		List<Paper> list1=query1.list();
		//List <Paper> list=query.list();
		tx.commit();
		return list1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Integer> findLessMaxDate(int Pid,int maxDate) {
		// TODO Auto-generated method stub
		/*List<Paper> listmax=paperService.findMaxDate(Pid);
		int maxdate=listmax.get(0).getPAdate();*/
		System.out.println("这里是DAo里面的最大日期值=================="+maxDate+"=============="+Pid);
		//String hql="select distinct PAdate from Paper where PAdate<? order by PAdate desc";
		String hql="select distinct PAdate from connectpap conn inner join paper pa on conn.PAidC=pa.PAid where conn.PidC=? and PAdate<? order by PAdate desc";
		//String hql1="select PAdate from connectpap conn inner join paper pa on conn.PAidC=pa.PAid where conn.PidC=? and PAdate=(select max(PAdate) from paper) order by PAdate desc";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		//Query query=session.createQuery(hql);
		//query.setParameter(0, maxdate);
		//List <Integer> list=query.list();
		Query query=session.createSQLQuery(hql);
		query.setParameter(0, Pid);
		query.setParameter(1, maxDate);
		List<Integer> list=query.list();
		tx.commit();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Paper> findByDate(int Pid, int pAdate) {
		// TODO Auto-generated method stub
		
		String hql="select * from connectpap conn inner join paper pa on conn.PAidC=pa.PAid where conn.PidC=? and PAdate=? ";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query1=session.createSQLQuery(hql).addEntity(Paper.class);
		query1.setParameter(0, Pid);
		query1.setParameter(1, pAdate);
		List<Paper> list1=query1.list();
		tx.commit();
		return list1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Paper> getAllPaper() {
		// TODO Auto-generated method stub
		System.out.println("Dao中的方法被执行");
		String hql="from Paper p order by p.PAdate desc";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Paper> list=query.list();
		tx.commit();
		return list;
	}

	@Override
	public Paper getPaper(String id) {
		System.out.println("Dao中的方法被执行");
		String hql="from Paper p where p.PAid=?";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setString(0, id);
		Paper paper=(Paper) query.uniqueResult();
		tx.commit();
		return paper;
	}
	
}
