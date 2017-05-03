package com.lab.dao;

import java.util.List;

import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;


public interface AboutUsDao {

	public List<Project> getProjects();//获取所有project
	public List<Cscholar> getScholars();//获取所有合作学者
	public List<Corganization> getOrganizations();//获取所有合作机构
}
