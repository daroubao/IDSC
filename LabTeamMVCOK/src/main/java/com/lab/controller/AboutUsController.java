package com.lab.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Corganization;
import com.lab.entity.Cscholar;
import com.lab.entity.Project;
import com.lab.entity.Recent;
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
		List<Project> pr=aboutUsService.getProjects();//获取所有project
		req.setAttribute("pr", pr);
		return "index-welcome-PROJECTS";
	}
	@RequestMapping("/Project")
	public String toProject(String Prid,HttpServletRequest req,HttpServletResponse resp){
		Project pr=aboutUsService.getProject(Prid);
		List<Recent> re=aboutUsService.getAboutRecents(Prid);
		String[] pictures=pr.getPrPicture().split("\\$\\$");
		String[] annotations=pr.getPrAnnotation().split("\\$\\$");//字符串分割
		Map<String,String> imgs=new HashMap<String,String>();//将图片信息用map数据结构存 方便向前端传数据
		if(pictures.length==annotations.length){//当图片和图片介绍数量相等时用Map存
			for(int i=0;i<pictures.length;i++){
				if(annotations[i].equals("null")){
					imgs.put(pictures[i], "");
				}else{
					imgs.put(pictures[i], annotations[i]);
				}
			}
		}else{//不等时用List存只存图片
			for(int i=0;i<pictures.length;i++){
				imgs.put(pictures[i], "");
			}
		}
		req.setAttribute("pr", pr);
		req.setAttribute("re", re);
		req.setAttribute("imgs", imgs);
		return "index-welcome-project";
	}
	@RequestMapping("/ShareCooperation")
	public String toShareCooperation(HttpServletRequest req,HttpServletResponse resp){
		//获取所有合作学者可合作机构
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
