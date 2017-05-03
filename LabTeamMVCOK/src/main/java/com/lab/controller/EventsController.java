package com.lab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Inmeeting;
import com.lab.entity.Recent;
import com.lab.service.InMeetingService;
import com.lab.service.NewsService;
import com.lab.service.RecentService;

@Controller
@RequestMapping("/recent")
public class EventsController  {
	
	@Autowired
	private RecentService recentService;
	
	@RequestMapping("/r")
	public String findr(HttpServletRequest request){
		
		List<Recent> list=recentService.list();
		
		for(int i = 0 ; i < list.size() ; i++) {
			  System.out.println(list.get(i).getRthem());
		}	
		
		request.setAttribute("list", list);
		return "IDSC-Recent-display1";

	}
	
	


	
	@Autowired
	private InMeetingService inMeetingService;
	
	@RequestMapping("/meeting")
	public String findi(HttpServletRequest request){
		
		List<Inmeeting> list=inMeetingService.list();
		
		for(int i = 0 ; i < list.size() ; i++) {
			  System.out.println(list.get(i));
		}	
		
		request.setAttribute("list", list);
		return "IDSC-Recent-display2";
	}



	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping("/{RUrl}")
	public String find(@PathVariable String RUrl,HttpServletRequest request){
		//
		System.out.println(RUrl);
		Recent list=newsService.list(RUrl);
		
		request.setAttribute("list", list);
		return "IDSC-Recent-display3";

	}
	
}
	
