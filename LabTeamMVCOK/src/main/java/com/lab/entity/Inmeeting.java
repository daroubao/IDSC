package com.lab.entity;


public class Inmeeting {
	private Integer Iid;
	private String Itheme;
	private Integer Pid;
	private String Idate;
	private String Iplace;
	private String Isponsor;

	public String getIsponsor() {
		return Isponsor;
	}

	public void setIsponsor(String isponsor) {
		Isponsor = isponsor;
	}

	public Integer getIid() {
		return Iid;
	}
	public void setIid(Integer iid) {
		Iid = iid;
	}
	public String getItheme() {
		return Itheme;
	}
	public void setItheme(String itheme) {
		Itheme = itheme;
	}
	public Integer getPid() {
		return Pid;
	}
	public void setPid(Integer pid) {
		Pid = pid;
	}
	public String getIdate() {
		return Idate;
	}
	public void setIdate(String idate) {
		Idate = idate;
	}
	public String getIplace() {
		return Iplace;
	}
	public void setIplace(String iplace) {
		Iplace = iplace;
	}
	
}
