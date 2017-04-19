package com.lab.dao.publication;

import java.util.List;

import com.lab.entity.Inmeeting;
import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.entity.Publication;

public interface SearchResultDao {
	public int getCount(String hqls);
	
	public List<Person> getPersonContent(String hqls,int pageoffset,int pageSize);
	public List<Publication> getPublicationContent(String hqls,int pageoffset,int pageSize);
	public List<Paper> getPaperContent(String hqls,int pageoffset,int pageSize);
	public List<Inmeeting> getInmeetingContent(String hqls,int pageoffset,int pageSize);
}
