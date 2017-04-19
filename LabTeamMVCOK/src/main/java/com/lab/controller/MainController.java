package com.lab.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Person;
import com.lab.entity.Publication;
import com.lab.service.ShowInfoService;
import com.lab.service.publication.BookService;

/**
 * @author By蓝十七
 * @version 创建时间：2017年3月26日 上午11:36:01
 * 
 */


@Controller
public class MainController {
	
	
	@Autowired
	private ShowInfoService showInfoService;
	@Autowired
	private BookService bookService;
	@RequestMapping("/index")
	public String gotoIndex(Model model){
		
		
		List<Person> listFellow=showInfoService.findAssociate_Fellow();
		model.addAttribute("listFellow",listFellow);
		Iterator<Person> itF=listFellow.iterator();
		while(itF.hasNext()){
			Person p=itF.next();
			System.out.println(p.getPname());
		}
		
		List<Person> listPro=showInfoService.findChair_Professor();
		model.addAttribute("listPro",listPro);
		Iterator<Person> itP=listPro.iterator();
		while(itP.hasNext()){
			Person p=itP.next();
			System.out.println(p.getPname());
		}
		
		List<Person> listLec=showInfoService.findLecturer();
		model.addAttribute("listLec",listLec);
		Iterator<Person> itL=listLec.iterator();
		while(itL.hasNext()){
			Person p=itL.next();
			System.out.println(p.getPname());
		}
		
		List<Publication> book=bookService.getBooks();
		model.addAttribute("book",book);
		
		return "index";
	}
	
	
	@RequestMapping("/admin/login")
	public String adminLogin(){
		return "admin-login";
	}
	
}
