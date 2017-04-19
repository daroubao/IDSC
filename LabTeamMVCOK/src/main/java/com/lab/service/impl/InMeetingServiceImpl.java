package com.lab.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.InMeetingDao;
import com.lab.entity.Inmeeting;
import com.lab.service.InMeetingService;


@Service
public class InMeetingServiceImpl implements InMeetingService{
	
	@Autowired
	private InMeetingDao inMeetingDao;
	
	@Override
	public List<Inmeeting> list(){
		
		return inMeetingDao.list();
	}
	

}
