package com.lab.service;

import java.util.List;

import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;
import com.lab.entity.Recent;


public interface AboutUsService {
	
	public List<Project> getProjects();
	public Project getProject(String Prid);//获得当前id的project
	public List<Recent> getAboutRecents(String Prid);//获得当前id相关的所有recent
	public List<Cscholar> getScholars();
	public List<Corganization> getOrganizations();
}
