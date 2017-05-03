package com.lab.entity;

import javax.persistence.Entity;

@Entity
public class Corganization {
	private Integer COid;
	private String COname;
	private String COintroduce;
	private String COurl;
	public Integer getCOid() {
		return COid;
	}
	public void setCOid(Integer cOid) {
		COid = cOid;
	}
	public String getCOname() {
		return COname;
	}
	public void setCOname(String cOname) {
		COname = cOname;
	}
	public String getCOintroduce() {
		return COintroduce;
	}
	public void setCOintroduce(String cOintroduce) {
		COintroduce = cOintroduce;
	}
	public String getCOurl() {
		return COurl;
	}
	public void setCOurl(String cOurl) {
		COurl = cOurl;
	}
	
}
