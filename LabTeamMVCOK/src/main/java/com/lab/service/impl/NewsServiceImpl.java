package com.lab.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.NewsDao;
import com.lab.entity.Recent;
import com.lab.service.NewsService;


@Service
public  class NewsServiceImpl implements NewsService {
	
	@Autowired
	private NewsDao newsDao;

	@Override
	public Recent list(String RUrl) {
		// TODO Auto-generated method stub
		
		return newsDao.list(RUrl);
	}


}
