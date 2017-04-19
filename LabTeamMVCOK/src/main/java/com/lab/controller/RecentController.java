package com.lab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Recent;
import com.lab.service.RecentService;

@Controller
@RequestMapping("/recent")
public class RecentController  {
	
	@Autowired
	private RecentService recentService;
	
	@RequestMapping("/r")
	public String find(HttpServletRequest request){
		
		List<Recent> list=recentService.list();
		
		for(int i = 0 ; i < list.size() ; i++) {
			  System.out.println(list.get(i).getRthem());
		}	
		
		request.setAttribute("list", list);
		return "IDSC-Recent-display1";

	}
	
	

}