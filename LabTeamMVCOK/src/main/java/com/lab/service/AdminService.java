package com.lab.service;

import java.util.List;

import com.lab.entity.Admin;
import com.lab.entity.Paper;
import com.lab.entity.Person;

/**
 * @author By蓝十七
 * @version 创建时间：2017年4月4日 下午9:13:05
 * 
 */
public interface AdminService {
	public Admin login(Admin admin);
	
	public void savePerson(Person person);
	
	public List<Paper> getPapers();
	
	public void savePaper(Paper paper);
}
