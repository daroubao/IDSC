package com.lab.service;

import java.util.List;

import com.lab.entity.Paper;

/**
 * @author By蓝十七
 * @version 创建时间：2017年3月26日 下午4:03:41
 * 
 */
public interface PaperService {

	public List<Paper> findMaxDate(int Pid);
	
	public List<Integer> findLessMaxDate(int Pid,int maxDate);
	
	public List<Paper> findByDate(int Pid,int pAdate);
	
	public List<Paper> getAllPaper();
	public Paper getPaper(String id);
//	public int getTotalPages(int count,int pageSize);
//	public int getCount(String hqls);
//	public List<Paper> getPageContent(String hqls,int pageoffset,int pageSize);
}
