package com.lab.controller.publication;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.entity.Inmeeting;
import com.lab.entity.PageBean;
import com.lab.entity.Paper;
import com.lab.entity.Person;
import com.lab.entity.Publication;
import com.lab.entity.ResultContent;
import com.lab.service.PaperService;
import com.lab.service.publication.BookService;
import com.lab.service.publication.SearchResultService;

@Controller
@RequestMapping("/publication")
public class PaperController {
	@Autowired
	private PaperService paperService;
	@Autowired
	private BookService bookservice;
	private PageBean pageBean;
	@Autowired
	private SearchResultService searchResultService;
	@RequestMapping("getPaper/{id}")
	public String getPaper(@PathVariable String id,HttpServletRequest request){
		Paper paper=paperService.getPaper(id);
		request.setAttribute("paper",paper);
		return "publications-paper";      //论文详细页面
	}
	
	@RequestMapping("getBook/{id}")
	public String getBook(@PathVariable String id,HttpServletRequest request){
		Publication book=bookservice.getBook(id);
		request.setAttribute("book",book);
		return "publications-book";       //书籍详细页面
	}
	
	@RequestMapping("/getPublication")
	public String getPublication(HttpServletRequest request){
		List<Paper> paper=paperService.getAllPaper();//获取所有的论文
		List<Paper> p=new ArrayList<Paper>();
		Map<Integer,List<Paper>> m=new LinkedHashMap<Integer,List<Paper>>();
		for(Paper pa:paper){   //按年份获取集合
			//System.out.println(pa.getPAdate());
			if(m.containsKey(pa.getPAdate())){
				p= m.get(pa.getPAdate());
				p.add(pa);
				m.put(pa.getPAdate(), p);
			}else{
				List<Paper> p1=new ArrayList<Paper>();
				p1.add(pa);
				m.put(pa.getPAdate(), p1);
			}
		}
		request.setAttribute("map",m);    //paper信息

		List<Publication> book=bookservice.getAllBook();//获取数据库中所有的书籍
		List<Publication> b=new ArrayList<Publication>();
		int size=book.size();
		if(size>7){
			for(int i=0;i<7;i++){
				b.add(book.get(i));
			}
		}else{
			for(int i=0;i<size;i++){
				b.add(book.get(i));
			}
		}
		request.setAttribute("book", b);   //页面只显示最近7本书籍信息
		return "publications";
	}
	
	@RequestMapping("/SearchRsult")   //获得搜索结果
	public String SearchRsult(String contents,HttpServletRequest req){
		System.out.println(contents);
		if(contents.equals("")){
			return "redirect:/publication/getPublication";
		}
		String str1="select count(*) from Person p where p.Pname like '%"+contents+"%' or p.Pbc like '%"+contents+"%'";
		String str2="select count(*) from Publication p where p.PUtitle like '%"+contents+"%' or p.PUdate like '%"+contents+"%' or p.PUpress like '%"+contents+"%'";
		String str3="select count(*) from Paper p where p.PAtitle like '%"+contents+"%' or p.PAdate like '%"+contents+"%'";
		String str4="select count(*) from Inmeeting m where m.Itheme like '%"+contents+"%' or m.Idate like '%"+contents+"%'";
		int personCount=searchResultService.getCount(str1);		//获取关键字和人员有关的信息数
		int bookCount=searchResultService.getCount(str2);		//获取关键字和书籍有关的信息数
		int paperCount=searchResultService.getCount(str3);		//获取关键字和论文有关的信息数
		int inmeetingCount=searchResultService.getCount(str4);	//获取关键字和会议有关的信息数
		int count=personCount+bookCount+paperCount+inmeetingCount;//获取总的信息数
		int totalPage=searchResultService.getTotalPages(count, 5);//获取总的页面数
		pageBean=new PageBean();
		pageBean.setPageSize(5);
		pageBean.setCurrPage(1);
		pageBean.setPersonCount(personCount);pageBean.setBookCount(bookCount);
		pageBean.setPaperCount(paperCount);pageBean.setInmeetingCount(inmeetingCount);
		pageBean.setTotalCount(count);
		pageBean.setTotalPage(totalPage);
		pageBean.setContents(contents);
		req.setAttribute("contents", contents);
		return "searchResult";
	}
	
	@RequestMapping("findAll") 						//分页处理
	public void findAll(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String cP=req.getParameter("currPage");		//获取前端的当前页面
		int currPage=Integer.parseInt(cP);
		pageBean.setCurrPage(currPage);            //设置当前页
     	System.out.println(currPage);
     	
     	String contents=pageBean.getContents();
     	System.out.println(contents);
     	List<ResultContent> result=createResult(contents);
     	String str2="["+pageBean.toString()+","+result.toString()+"]";
     	System.out.println(str2);
		resp.getWriter().write(str2);
		resp.getWriter().flush();
		resp.getWriter().close();
	}
	
	/**
	 * 通过关键字构建结果集
	 * 每次去数据库获取当前页面的数据
	 */
	public List<ResultContent> createResult(String keyword){
     	int pageSize=pageBean.getPageSize();
     	int currPage=pageBean.getCurrPage();
     	int personCount=pageBean.getPersonCount();	//人员数
     	int bookCount=pageBean.getBookCount();		//书籍数
     	int paperCount=pageBean.getPaperCount();	//论文数
     	int inmeetingCount=pageBean.getInmeetingCount();//会议数
     	int begin=0;
     	int count1=personCount/pageSize+1;
     	int count2=(personCount+bookCount)/pageSize+1;
     	int count3=(personCount+bookCount+paperCount)/pageSize+1;
     	int count4=(personCount+bookCount+paperCount+inmeetingCount)/pageSize+1;
     	List<ResultContent> result=new ArrayList<ResultContent>();//结果集统计
     	if(personCount!=0&&currPage<=count1){			//处理人员相关信息
     		String str1="from Person p where p.Pname like '%"+keyword+"%' or p.Pbc like '%"+keyword+"%'";
     		begin=(currPage-1)*pageSize;
     		List<Person> persons=searchResultService.getPersonContent(str1, begin, pageSize);
     		for (Person p : persons) {				//转换同一格式 
     			ResultContent r=new ResultContent();
     			r.setTitle(p.getPname());
     			r.setContent("电话:"+p.getPtel()+"  传真:"+p.getPfax()+"  邮箱:"+p.getPemail()+"..");
     			r.setUrl(p.getPurl());
				result.add(r);
			}
     	}
     	if(bookCount!=0&&currPage>=count1&&currPage<=count2){//处理书籍相关信息
     		String str2="from Publication p where p.PUtitle like '%"+keyword+"%' or p.PUdate like '%"+keyword+"%' or p.PUpress like '%"+keyword+"%'";
     		if(currPage==count1){
     			begin=0;
     			pageSize=pageSize-personCount%pageSize;
     		}else{
     			begin=(currPage-count1-1)*pageSize+pageSize-personCount%pageSize;
     		}
     		List<Publication> books=searchResultService.getPublicationContent(str2, begin, pageSize);
     		for (Publication p : books) {		//转换同一格式
     			ResultContent r=new ResultContent();
     			r.setTitle(p.getPUtitle());
     			r.setContent("出版时间:"+p.getPUdate()+"  出版社:"+p.getPUpress()+"  关键字:"+p.getPUkeyword()+"..");
     			r.setUrl("/LabTeamMVCOK/publication/getBook/"+p.getPUid());
     			result.add(r);
			}
     	}
     	if(paperCount!=0&&currPage>=count2&&currPage<=count3){//处理论文相关信息
     		String str3="from Paper p where p.PAtitle like '%"+keyword+"%' or p.PAdate like '%"+keyword+"%'";
     		if(currPage==count2){
     			begin=0;
     			pageSize=pageSize-(personCount+bookCount)%pageSize;
     		}else{
     			begin=(currPage-count2-1)*pageSize+pageSize-(personCount+bookCount)%pageSize;
     		}
     		List<Paper> papers=searchResultService.getPaperContent(str3, begin, pageSize);
     		for (Paper p : papers) {		//转换同一格式
     			ResultContent r=new ResultContent();
     			r.setTitle(p.getPAtitle());
     			r.setContent("发表日期:"+p.getPAdate()+"  发表地点:"+p.getPAaddress()+"  关键字:"+p.getPAkeyword());
     			r.setUrl("/LabTeamMVCOK/publication/getPaper/"+p.getPAid());
     			result.add(r);
			}
     	}
     	if(inmeetingCount!=0&&currPage>=count3&&currPage<=count4){//处理会议相关信息
     		String str4="from Inmeeting m where m.Itheme like '%"+keyword+"%' or m.Idate like '%"+keyword+"%'";
     		if(currPage==count3){
     			begin=0;
     			pageSize=pageSize-(personCount+bookCount+paperCount)%pageSize;
     		}else{
     			begin=(currPage-count3-1)*pageSize+pageSize-(personCount+bookCount+paperCount)%pageSize;
     		}
     		List<Inmeeting> Inmeets=searchResultService.getInmeetingContent(str4, begin, pageSize);
     		for (Inmeeting m : Inmeets) {		//转换同一格式
     			ResultContent r=new ResultContent();
     			r.setTitle(m.getItheme());
     			r.setContent("会议时间:"+m.getIdate()+"  会议地点:"+m.getIplace());
     			r.setUrl("#");
     			result.add(r);
			}
     	}
     	return result;
	}
}
