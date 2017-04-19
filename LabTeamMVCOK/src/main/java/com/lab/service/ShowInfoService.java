package com.lab.service;

import java.util.List;

import com.lab.entity.Person;

public interface ShowInfoService {
	public Person findByName(String Pname);
	
	public List<Person> getPersons();
	
	public List<Person> findByPosition(String Pposition);
	
	public List<Person> findAssociate_Fellow();//查找职位是Associate的
	
	public List<Person> findChair_Professor();//查找职位是Chair的
	
	public List<Person> findLecturer();//查找职位是Lecturer的
	
	
}
