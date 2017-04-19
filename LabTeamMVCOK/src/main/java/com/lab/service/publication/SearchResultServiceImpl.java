package com.lab.service.publication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.publication.SearchResultDao;
import com.lab.entity.Inmeeting;
import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.entity.Publication;

@Service
public class SearchResultServiceImpl implements SearchResultService{
	@Autowired
	private SearchResultDao searchResultDao;
	public int getTotalPages(int count,int pageSize){  //获取总的页数
		int totalPage=0;
		totalPage=(count%pageSize==0)?(count/pageSize):(count/pageSize+1);
		return totalPage;
	}

	public int getCount(String hqls){
		return searchResultDao.getCount(hqls);
	}
	public List<Person> getPersonContent(String hqls,int pageoffset,int pageSize){
		return searchResultDao.getPersonContent(hqls,pageoffset,pageSize);
	}
	public List<Publication> getPublicationContent(String hqls,int pageoffset,int pageSize){
		return searchResultDao.getPublicationContent(hqls,pageoffset,pageSize);
	}
	public List<Paper> getPaperContent(String hqls,int pageoffset,int pageSize){
		return searchResultDao.getPaperContent(hqls,pageoffset,pageSize);
	}
	public List<Inmeeting> getInmeetingContent(String hqls,int pageoffset,int pageSize){
		return searchResultDao.getInmeetingContent(hqls,pageoffset,pageSize);
	}
}
