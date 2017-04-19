package com.lab.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.RecentDao;
import com.lab.entity.Recent;
import com.lab.service.RecentService;


@Service
public  class RecentServiceImpl implements RecentService {
	
	@Autowired
	private RecentDao recentDao;

	@Override
	public List<Recent> list() {
		// TODO Auto-generated method stub
		return recentDao.list();
	}


}
