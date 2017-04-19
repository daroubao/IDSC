package com.lab.entity;

import java.util.HashSet;
import java.util.Set;

public class Person {
	
	private int Pid;
	private String Pname;
	private String Ppicture;
	private String Pposition;
	private String Pbc;
	private String Paddress;
	private String Poffice;
	private String Ptel;
	private String Pfax;
	private String Purl;
	private String Pemail;
	private String Pinterests;
	private String Presume;
	private String Paward;
	
	private Set<Paper> papers=new HashSet<Paper>();
	private Set<Publication> publications=new HashSet<>();
	
	
	
	
	
	public Set<Publication> getPublications() {
		return publications;
	}
	public void setPublications(Set<Publication> publications) {
		this.publications = publications;
	}
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getPpicture() {
		return Ppicture;
	}
	public void setPpicture(String ppicture) {
		Ppicture = ppicture;
	}
	public String getPposition() {
		return Pposition;
	}
	public void setPposition(String pposition) {
		Pposition = pposition;
	}
	public String getPbc() {
		return Pbc;
	}
	public void setPbc(String pbc) {
		Pbc = pbc;
	}
	public String getPaddress() {
		return Paddress;
	}
	public void setPaddress(String paddress) {
		Paddress = paddress;
	}
	public String getPoffice() {
		return Poffice;
	}
	public void setPoffice(String poffice) {
		Poffice = poffice;
	}
	public String getPtel() {
		return Ptel;
	}
	public void setPtel(String ptel) {
		Ptel = ptel;
	}
	public String getPfax() {
		return Pfax;
	}
	public void setPfax(String pfax) {
		Pfax = pfax;
	}
	public String getPurl() {
		return Purl;
	}
	public void setPurl(String purl) {
		Purl = purl;
	}
	public String getPemail() {
		return Pemail;
	}
	public void setPemail(String pemail) {
		Pemail = pemail;
	}
	public String getPinterests() {
		return Pinterests;
	}
	public void setPinterests(String pinterests) {
		Pinterests = pinterests;
	}
	public String getPresume() {
		return Presume;
	}
	public void setPresume(String presume) {
		Presume = presume;
	}
	public String getPaward() {
		return Paward;
	}
	public void setPaward(String paward) {
		Paward = paward;
	}
	public Set<Paper> getPapers() {
		return papers;
	}
	public void setPapers(Set<Paper> papers) {
		this.papers = papers;
	}
	public Person() {
		super();
	}
	
	
	
	
	
	
	
}
