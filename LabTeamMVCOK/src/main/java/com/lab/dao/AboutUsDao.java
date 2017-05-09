package com.lab.dao;

import java.util.List;

import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;
import com.lab.entity.Recent;


public interface AboutUsDao {

	public List<Project> getProjects();//获取所有project
	public Project getProject(String Prid);//获得当前id的project
	public List<Recent> getAboutRecents(String Prid);//获得当前id相关的所有recent
	public List<Cscholar> getScholars();//获取所有合作学者
	public List<Corganization> getOrganizations();//获取所有合作机构
}
