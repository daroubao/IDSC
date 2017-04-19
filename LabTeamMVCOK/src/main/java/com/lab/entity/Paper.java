package com.lab.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * @author By蓝十七
 * @version 创建时间：2017年3月26日 上午11:13:40
 * 
 */
public class Paper {
	
	private Integer PAid;
	private String PAtitle;
	private Integer PAdate;
	private String PAurl;
	private String PAaddress;
	private String PAkeyword;
	private String PAvolume;
	private String PAissue;
	private String PApagenum;
	private String PAjournal;
	private String PAconference;
	private String PAconfLoca;
	
	
	private Set<Person> persons=new HashSet<Person>();
	
	
	
	public Integer getPAid() {
		return PAid;
	}
	public void setPAid(Integer pAid) {
		PAid = pAid;
	}
	public String getPAtitle() {
		return PAtitle;
	}
	public void setPAtitle(String pAtitle) {
		PAtitle = pAtitle;
	}
	
	public Integer getPAdate() {
		return PAdate;
	}
	public void setPAdate(Integer pAdate) {
		PAdate = pAdate;
	}
	public String getPAurl() {
		return PAurl;
	}
	public void setPAurl(String pAurl) {
		PAurl = pAurl;
	}
	public String getPAaddress() {
		return PAaddress;
	}
	public void setPAaddress(String pAaddress) {
		PAaddress = pAaddress;
	}
	public String getPAkeyword() {
		return PAkeyword;
	}
	public void setPAkeyword(String pAkeyword) {
		PAkeyword = pAkeyword;
	}
	public String getPAvolume() {
		return PAvolume;
	}
	public void setPAvolume(String pAvolume) {
		PAvolume = pAvolume;
	}
	public String getPAissue() {
		return PAissue;
	}
	public void setPAissue(String pAissue) {
		PAissue = pAissue;
	}
	public String getPApagenum() {
		return PApagenum;
	}
	public void setPApagenum(String pApagenum) {
		PApagenum = pApagenum;
	}
	public String getPAjournal() {
		return PAjournal;
	}
	public void setPAjournal(String pAjournal) {
		PAjournal = pAjournal;
	}
	public String getPAconference() {
		return PAconference;
	}
	public void setPAconference(String pAconference) {
		PAconference = pAconference;
	}
	public String getPAconfLoca() {
		return PAconfLoca;
	}
	public void setPAconfLoca(String pAconfLoca) {
		PAconfLoca = pAconfLoca;
	}
	
	
	public Paper() {
		super();
	}
	public Set<Person> getPersons() {
		return persons;
	}
	public void setPersons(Set<Person> persons) {
		this.persons = persons;
	}
	
	@Override
	public String toString() {
		return "{\"PAid\":\"" + PAid + "\",\"PAtitle\":\"" + PAtitle + "\",\"PAdate\":\""
				+ PAdate + "\"}";
	}
	
	
	
	
	
	
	
}
