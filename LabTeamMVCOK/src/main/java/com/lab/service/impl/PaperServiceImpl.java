package com.lab.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.PaperDao;
import com.lab.entity.Paper;
import com.lab.service.PaperService;

/**
 * @author By蓝十七
 * @version 创建时间：2017年3月26日 下午4:04:21
 * 
 */
@Service
public class PaperServiceImpl implements PaperService {
	
	@Autowired
	private PaperDao paperDao;
	
	@Override
	public List<Paper> findMaxDate(int Pid) {
		// TODO Auto-generated method stub
		List<Paper> list=paperDao.findMaxDate(Pid);
		return list;
	}

	@Override
	public List<Integer> findLessMaxDate(int Pid,int maxDate) {
		// TODO Auto-generated method stub
		List<Integer> list=paperDao.findLessMaxDate(Pid,maxDate);
		return list;
	}

	@Override
	public List<Paper> findByDate(int Pid, int pAdate) {
		// TODO Auto-generated method stub
		List<Paper> list=paperDao.findByDate(Pid, pAdate);
		return list;
	}
	
	@Override
	public List<Paper> getAllPaper() {
		// TODO Auto-generated method stub
		return paperDao.getAllPaper();
	}
	@Override
	public Paper getPaper(String id) {
		// TODO Auto-generated method stub
		return paperDao.getPaper(id);
	}

	/*public int getTotalPages(int count,int pageSize){  //获取总的页数
		int totalPage=0;
		totalPage=(count%pageSize==0)?(count/pageSize):(count/pageSize+1);
		return totalPage;
	}

	public int getCount(String hqls){
		return paperDao.getCount(hqls);
	}
	public List<Paper> getPageContent(String hqls,int pageoffset,int pageSize){ //获取当前页面的内容
		return paperDao.getPageContent(hqls,pageoffset,pageSize);
	}*/
	
}
