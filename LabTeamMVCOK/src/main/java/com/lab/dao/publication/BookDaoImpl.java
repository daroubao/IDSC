package com.lab.dao.publication;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lab.entity.Publication;
@Repository
public class BookDaoImpl implements BookDao {
	@Resource
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<Publication> getAllBook() {
		System.out.println("Dao中的方法被执行");
		String hql="from Publication b order by b.PUdate desc";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List<Publication> list=query.list();
		tx.commit();
		return list;
	}

	public Publication getBook(String id) {
		System.out.println("Dao中的方法被执行");
		String hql="from Publication b where b.PUid=?";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setString(0, id);
		Publication book=(Publication) query.uniqueResult();
		tx.commit();
		return book;
	}
	
	@SuppressWarnings("unchecked")
	public List<Publication> getBooks(){
		String hql="from Publication b order by b.PUdate desc";
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(4);
		List<Publication> list=query.list();
		tx.commit();
		return list;
	}
}
