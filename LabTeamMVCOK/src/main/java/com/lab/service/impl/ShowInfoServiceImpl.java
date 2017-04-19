package com.lab.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.ShowInfoDao;
import com.lab.entity.Person;
import com.lab.service.ShowInfoService;

@Service
public class ShowInfoServiceImpl implements ShowInfoService {
	
	
	@Autowired
	private ShowInfoDao showInfoDao;
	
	@Override
	public Person findByName(String Pname) {
		// TODO Auto-generated method stub
		Person p=showInfoDao.findByName(Pname);
		return p;
	}

	@Override
	public List<Person> getPersons() {
		// TODO Auto-generated method stub
		List<Person> list=showInfoDao.getPersons();
		return list;
	}

	@Override
	public List<Person> findByPosition(String Pposition) {
		// TODO Auto-generated method stub
		List<Person> list=showInfoDao.findByPosition(Pposition);
		return list;
	}

	
	/*
	 * (non-Javadoc)下面是service里面通过职位查找
	 * @see com.lab.service.ShowInfoService#findAssociate_Fellow()
	 */
	@Override
	public List<Person> findAssociate_Fellow() {
		// TODO Auto-generated method stub
		List<Person> list=showInfoDao.findAssociate_Fellow();
		return list;
	}

	@Override
	public List<Person> findChair_Professor() {
		// TODO Auto-generated method stub
		List<Person> list=showInfoDao.findChair_Professor();
		return list;
	}

	@Override
	public List<Person> findLecturer() {
		// TODO Auto-generated method stub
		List<Person> list=showInfoDao.findLecturer();
		return list;
	}

	
	
}
