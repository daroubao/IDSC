package com.lab.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.AboutUsDao;
import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;
import com.lab.service.AboutUsService;
@Service
public class AboutUsServiceImpl implements AboutUsService {

	@Autowired
	AboutUsDao aboutUsDao;
	@Override
	public List<Cscholar> getScholars() {
		// TODO Auto-generated method stub
		return aboutUsDao.getScholars();
	}

	@Override
	public List<Corganization> getOrganizations() {
		// TODO Auto-generated method stub
		return aboutUsDao.getOrganizations();
	}
	
	public List<Project> getProjects(){
		return aboutUsDao.getProjects();
	}
}
