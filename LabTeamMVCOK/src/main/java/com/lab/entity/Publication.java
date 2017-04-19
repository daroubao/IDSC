package com.lab.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @author By蓝十七
 * @version 创建时间：2017年3月26日 下午3:08:05
 * 
 */
public class Publication {
	
	private Integer PUid;
	private String PUtitle;
	private Date PUdate;
	private String PUdownUrl;
	private String PUkeyword;
	private String PUpress;
	private String PUauthor;
	private String PUbuyUrl;
	
	private Set<Person> persons=new HashSet<>();
	
	
	
	
	public Publication() {
		super();
	}
	public Set<Person> getPersons() {
		return persons;
	}
	public void setPersons(Set<Person> persons) {
		this.persons = persons;
	}
	public Integer getPUid() {
		return PUid;
	}
	public void setPUid(Integer pUid) {
		PUid = pUid;
	}
	public String getPUtitle() {
		return PUtitle;
	}
	public void setPUtitle(String pUtitle) {
		PUtitle = pUtitle;
	}
	public Date getPUdate() {
		return PUdate;
	}
	public void setPUdate(Date pUdate) {
		PUdate = pUdate;
	}
	public String getPUdownUrl() {
		return PUdownUrl;
	}
	public void setPUdownUrl(String pUdownUrl) {
		PUdownUrl = pUdownUrl;
	}
	public String getPUkeyword() {
		return PUkeyword;
	}
	public void setPUkeyword(String pUkeyword) {
		PUkeyword = pUkeyword;
	}
	public String getPUpress() {
		return PUpress;
	}
	public void setPUpress(String pUpress) {
		PUpress = pUpress;
	}
	public String getPUauthor() {
		return PUauthor;
	}
	public void setPUauthor(String pUauthor) {
		PUauthor = pUauthor;
	}
	public String getPUbuyUrl() {
		return PUbuyUrl;
	}
	public void setPUbuyUrl(String pUbuyUrl) {
		PUbuyUrl = pUbuyUrl;
	}
	
	
	
	
	
}
