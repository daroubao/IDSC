package com.lab.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.SessionAttributes;







import com.lab.entity.Admin;
import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.service.AdminService;
import com.lab.service.ShowInfoService;


/**
 * @author By蓝十七
 * @version 创建时间：2017年4月4日 下午7:12:52
 * 
 */
@Controller
@RequestMapping("/admin")
//@SessionAttributes({"admin","admin"})
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private ShowInfoService showInfoService;
	
	@RequestMapping("/manage")
	public String manage(@ModelAttribute Admin admin,Model model){
		System.out.println(admin.getAname());
		System.out.println(admin.getApassword());
		Admin a=adminService.login(admin);
		if(a!=null){
			model.addAttribute("admin",a);
			return "/admin/admin-main";
		}else{
			return "redirect:/admin/login";
		}
		
	}
	
	@RequestMapping("/persons")
	public String getPersons(Model model){
		
		List<Person> list=showInfoService.getPersons();
		model.addAttribute("list", list);
		
		Iterator<Person> it=list.iterator();
		while(it.hasNext()){
			Person p=it.next();
			System.out.println(p.getPname());
		}
		
		return "/admin/person/admin-showpersons";
	}
	
	@RequestMapping("/addperson")
	public String goaddPer(){
		
		return "/admin/person/admin-addperson";
	}
	
	
	@RequestMapping("/addpersonok")
	public String addPersonOk(@ModelAttribute Person person){
		adminService.savePerson(person);
		return "redirect:/admin/persons";
	}
	
	@RequestMapping("/papers")
	public String getPapers(Model model){
		List<Paper> list=adminService.getPapers();
		model.addAttribute("list", list);
		
		Iterator<Paper> it=list.iterator();
		while(it.hasNext()){
			Paper p=it.next();
			Set<Person> persons=p.getPersons();
			for(Person person:persons){
				System.out.println(person.getPname());
			}
			System.out.println(p.getPAtitle());
		}
		
		return "/admin/paper/admin-showpapers";
	}
	
	@RequestMapping("/addpaper")
	public String goaddPaper(){
		
		return "/admin/paper/admin-addpaper";
	}
	
	@RequestMapping("/addpaperok")
	public String addPaperOk(@ModelAttribute Paper paper,HttpServletRequest request){
		String Pname=request.getParameter("pname");
		System.out.println(paper.getPAaddress());
		System.out.println(paper.getPAdate());
		System.out.println(Pname);
		Person p=showInfoService.findByName(Pname);
		System.out.println(p.getPpicture());
		Set<Person> persons=paper.getPersons();
		persons.add(p);
		paper.setPersons(persons);
		adminService.savePaper(paper);
		return "redirect:/admin/papers";
	}
	
}
