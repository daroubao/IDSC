package com.lab.service;

import java.util.List;

import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;


public interface AboutUsService {
	
	public List<Project> getProjects();
	public List<Cscholar> getScholars();
	public List<Corganization> getOrganizations();
}
