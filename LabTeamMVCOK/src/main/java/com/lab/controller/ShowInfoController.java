package com.lab.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.entity.Publication;
import com.lab.service.PaperService;
import com.lab.service.ShowInfoService;

@Controller
public class ShowInfoController {
	
	@Autowired
	private ShowInfoService showInfoService;
	
	@Autowired
	private PaperService paperService;
	private String pname;
	
	@RequestMapping("/member/{Pname}")
	public String showInfo(@PathVariable String Pname,Model model) {
		System.out.println(Pname);
		
		pname=Pname;//设置当前人员名字
		String [] Names=Pname.split("_");//字符串分割
		String surname=Names[1];
		String name=Names[0];
		
		Person p=showInfoService.findByName(Pname);
		Set<Paper> papers=p.getPapers();
		for(Paper paper:papers){
			System.out.println(paper.getPAid());
			System.out.println(paper.getPAtitle());
			System.out.println(paper.getPAurl());
			System.out.println("打印paper信息");
		}
		System.out.println("这里打印元素个数================================================"+papers.size());
		Set<Publication> publications=p.getPublications();
		for(Publication pub:publications){
			System.out.println(pub.getPUid());
			System.out.println(pub.getPUtitle());
			System.out.println("打印出版物信息");
		}
		System.out.println("分割线===============================================================");
		for(int i=0;i<=papers.size()%3;i++){
			
		}
		
		/*if(papers.isEmpty()){
			Paper paper1=new Paper();
			paper1.setPAtitle("目前还没有论文发布");
			paper1.setPAurl("null");
			model.addAttribute("papers", paper1);
		}else{
			model.addAttribute("papers", papers);
		}*/
		if(papers.isEmpty())
			System.out.println("=============================================papers空");
		
		List<Paper> listpaper=new LinkedList<>();
		for(Paper paper:papers){
			System.out.println(paper.getPAid());
			System.out.println(paper.getPAtitle());
			System.out.println("打印paper信息");
			listpaper.add(paper);
		}
		for(Paper paper:listpaper){
			System.out.println(paper.getPAid());
			System.out.println(paper.getPAtitle());
			System.out.println("打印paper信息");
		}
		System.out.println("================================这里是分割线==============================================");
		
		
		model.addAttribute("surname", surname);
		model.addAttribute("name", name);
		
		model.addAttribute("p", p);
		model.addAttribute("papers", papers);
		model.addAttribute("pubs", publications);
		
		System.out.println(p.getPresume());
		System.out.println(p.getPpicture());
		
		/*List<Person> list=showInfoService.getPersons();
		model.addAttribute("list", list);
		
		Iterator<Person> it=list.iterator();
		while(it.hasNext()){
			Person p1=it.next();
			System.out.println("这里显示左下角的人员");
			System.out.println(p1.getPname());
		}*/
		
		List<Person> listFellow=showInfoService.findByPosition("Co-founders");
		model.addAttribute("listFellow", listFellow);
		Iterator<Person> it=listFellow.iterator();
		while(it.hasNext()){
			Person p1=it.next();
			System.out.println("这里显示左下角的Fellow人员");
			System.out.println(p1.getPname());
		}
		
		List<Person> listProfessor=showInfoService.findByPosition("Coordinators");
		model.addAttribute("listProfessor", listProfessor);
		Iterator<Person> it1=listProfessor.iterator();
		while(it1.hasNext()){
			Person p1=it1.next();
			System.out.println("这里显示左下角的Chair_Professor人员");
			System.out.println(p1.getPname());
		}
		
		List<Person> listLecturer=showInfoService.findByPosition("Academic Advisory Panel");
		model.addAttribute("listLecturer", listLecturer);
		Iterator<Person> it2=listLecturer.iterator();
		while(it2.hasNext()){
			Person p1=it2.next();
			System.out.println("这里显示左下角的Lecturer人员");
			System.out.println(p1.getPname());
		}
		List<Person> listothers=showInfoService.findByPosition("LabMembers");
		model.addAttribute("listothers", listothers);
		
		
/*//		int Pid=p.getPid();
//		System.out.println("================================"+Pid);
//		List<Paper> listPaper=paperService.findMaxDate(Pid);
//		if(!listPaper.isEmpty()){
//		model.addAttribute("listPaperMax", listPaper);
//		Iterator<Paper> it3=listPaper.iterator();
//		while(it3.hasNext()){
//			Paper p1=it3.next();
//			System.out.println("这里显示论文信息");
//			System.out.println(p1.getPAdate());
//			System.out.println(p1.getPAtitle());
//		}
//		}
//		
//		
//		
//		if(!listPaper.isEmpty()){
//			System.out.println("为空的listPaper是不能进入这个判断的");
//		int maxDate=listPaper.get(0).getPAdate();
//		
//		List<Integer> listPaperLess=(List<Integer>) paperService.findLessMaxDate(Pid,maxDate);
//		model.addAttribute("listPaperLess", listPaperLess);
//		Iterator<Integer> it4=listPaperLess.iterator();
//		while(it4.hasNext()){
//			System.out.println(it4.next());
//			System.out.println("这里显示小于年份论文信息");
//		
//		}
//		}
*/		
		
		return "IDSC-Members-display1";
		//return "index1";
	}
	
	/*public Person showInfoByJS(){
		Person p=showInfoService.findByName();
		if(p==null){
			Person p1=new Person();
			p1.setPtel("11111111111111");
			p=p1;
		}
		return p;
	}*/
	
	@RequestMapping("/members")
	public String getPersons(Model model){
		List<Person> list=showInfoService.getPersons();
		model.addAttribute("list", list);
		
		Iterator<Person> it=list.iterator();
		while(it.hasNext()){
			Person p=it.next();
			System.out.println(p.getPname());
		}
		
		/*
		 * 自动刷新职位暂时不弄
		 */
		
		return "IDSC-about-us";
	}
	
	
	@RequestMapping("/members_dis")
	public String getPersonsdis(Model model){
		List<Person> list=showInfoService.getPersons();
		model.addAttribute("list", list);
		
		Iterator<Person> it=list.iterator();
		while(it.hasNext()){
			Person p=it.next();
			System.out.println(p.getPname());
		}
		
		return "IDSC-Members-display1";
	}
	
	
	
	@RequestMapping("/showPos/{Pposition}")
	public String showPposition(@PathVariable String Pposition,Model model) {
		System.out.println(Pposition);
		List<Person> list=showInfoService.findByPosition(Pposition);
		model.addAttribute("list", list);

		
		Iterator<Person> it=list.iterator();
		while(it.hasNext()){
			Person p1=it.next();
			System.out.println(p1.getPname());
		}
		
		return "IDSC-about-us";
		//return "index1";
	}
	
	
	
	/*
	 *返回当前人当前年份的paper信息 
	 */
	@RequestMapping("/member/getYearPaper")
	public void getYearPaper(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String year=req.getParameter("year");		//获取前端的要查询的年份
		Person p=showInfoService.findByName(pname);
		Set<Paper> papers=p.getPapers();
		String json="[";
		for (Paper paper : papers) {
			if(!year.equals("all")){
				if(year.equals(paper.getPAdate().toString())){
					json+="{\"PAtitle\":\""+paper.getPAtitle()+"\",\"PAurl\":\""+paper.getPAurl()+"\"},";
				}
			}else{
				json+="{\"PAtitle\":\""+paper.getPAtitle()+"\",\"PAurl\":\""+paper.getPAurl()+"\"},";
			}
		}
		json+="{}]";
		resp.getWriter().write(json);
		resp.getWriter().flush();
		resp.getWriter().close();
	}
	@RequestMapping("/member/getYears")
	public void getYears(HttpServletRequest req, HttpServletResponse resp)throws IOException{
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		Person p=showInfoService.findByName(pname);
		Set<Paper> papers=p.getPapers();
		List<Integer> years=new ArrayList<Integer>();
		//获取不重复的年份
		for(Paper paper:papers){
			if(!years.contains(paper.getPAdate())){
				years.add(paper.getPAdate());
			}
		}
		//将年份按降序排序
		Collections.sort(years, Collections.reverseOrder());
		System.out.println("*******************获取所有年份信息**********************");
		System.out.println(years.toString());
		resp.getWriter().write(years.toString());
		resp.getWriter().flush();
		resp.getWriter().close();		
	}
}
