package com.lab.entity;

import java.util.Date;

public class Inmeeting {
	private Integer Iid;
	private String Itheme;
	private Integer Pid;
	private Date Idate;
	private String Iplace;
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
	public Date getIdate() {
		return Idate;
	}
	public void setIdate(Date idate) {
		Idate = idate;
	}
	public String getIplace() {
		return Iplace;
	}
	public void setIplace(String iplace) {
		Iplace = iplace;
	}
	
}
