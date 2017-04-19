package com.lab.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.AdminDao;
import com.lab.entity.Admin;
import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.service.AdminService;

/**
 * @author By蓝十七
 * @version 创建时间：2017年4月4日 下午9:13:43
 * 
 */
@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		Admin a=adminDao.login(admin);
		return a;
	}

	@Override
	public void savePerson(Person person) {
		// TODO Auto-generated method stub
		adminDao.savePerson(person);
	}

	@Override
	public List<Paper> getPapers() {
		// TODO Auto-generated method stub
		List<Paper> list=adminDao.getPapers();
		return list;
	}

	@Override
	public void savePaper(Paper paper) {
		// TODO Auto-generated method stub
		adminDao.savePaper(paper);
	}

}
