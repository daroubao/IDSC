package com.lab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Inmeeting;
import com.lab.service.InMeetingService;

@Controller
@RequestMapping("/recent")
public class InMeetingController {
	
	@Autowired
	private InMeetingService inMeetingService;
	
	@RequestMapping("/meeting")
	public String find(HttpServletRequest request){
		
		List<Inmeeting> list=inMeetingService.list();
		
		for(int i = 0 ; i < list.size() ; i++) {
			  System.out.println(list.get(i));
		}	
		
		request.setAttribute("list", list);
		return "IDSC-Recent-display2";
	}

}
