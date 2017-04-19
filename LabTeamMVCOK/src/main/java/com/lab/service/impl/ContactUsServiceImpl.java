package com.lab.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.ContactUsDao;
import com.lab.entity.ContactUs;
import com.lab.service.ContactUsService;

@Service
public class ContactUsServiceImpl implements ContactUsService {
	
	
	@Autowired
	private ContactUsDao contactUsDao;

	
	
	public void save(ContactUs cu){
		System.out.println("Service中的方法被执行");
		contactUsDao.save(cu);
	}
}
