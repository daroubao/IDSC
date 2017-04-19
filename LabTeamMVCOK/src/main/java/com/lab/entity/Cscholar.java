package com.lab.entity;

import javax.persistence.Entity;
import javax.persistence.Table;



@Entity
@Table
public class Cscholar {
	private int CSid;
	private String CSname;
	private String CSintroduce;
	private String CSproject;
	public int getCSid() {
		return CSid;
	}
	public void setCSid(int cSid) {
		CSid = cSid;
	}
	public String getCSname() {
		return CSname;
	}
	public void setCSname(String cSname) {
		CSname = cSname;
	}
	public String getCSintroduce() {
		return CSintroduce;
	}
	public void setCSintroduce(String cSintroduce) {
		CSintroduce = cSintroduce;
	}
	public String getCSproject() {
		return CSproject;
	}
	public void setCSproject(String cSproject) {
		CSproject = cSproject;
	}
	
	
}
