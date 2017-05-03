package com.lab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;
import com.lab.service.AboutUsService;
@Controller
@RequestMapping("/welcome")
public class AboutUsController {
	@Autowired
	private AboutUsService aboutUsService;
	@RequestMapping("/Introduction")
	public String toIntroduction(){
		return "index-welcome-INTRODUCTION";
	}
	@RequestMapping("/ResearchDirection")
	public String toResearchDirection(){
		return "index-welcome-RESEARCH-DIRECTION";
	}
	@RequestMapping("/Projects")
	public String toProjects(HttpServletRequest req,HttpServletResponse resp){
		List<Project> pr=aboutUsService.getProjects();
		req.setAttribute("pr", pr);
		return "index-welcome-PROJECTS";
	}
	@RequestMapping("/ShareCooperation")
	public String toShareCooperation(HttpServletRequest req,HttpServletResponse resp){
		List<Cscholar> cs=aboutUsService.getScholars();
		List<Corganization> co=aboutUsService.getOrganizations();
		req.setAttribute("cs", cs);
		req.setAttribute("co", co);
		return "index-welcome-SHARE-COOPERATION";
	}
	@RequestMapping("/Contact")
	public String toContact(){
		return "index-welcome-CONTACT";
	}
}
