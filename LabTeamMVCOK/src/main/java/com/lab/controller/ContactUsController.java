package com.lab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.ContactUs;
import com.lab.service.ContactUsService;

@Controller
@RequestMapping("/contact")
public class ContactUsController {
	
	@Autowired
	private ContactUsService contactUsService;
	
	@RequestMapping("/us")
	public String save(@ModelAttribute ContactUs cu){
		System.out.println("Action中的save方法被执行");
		contactUsService.save(cu);
		return "redirect:/index";
		//return "redirect:../index";
	}
	
	
	
}
