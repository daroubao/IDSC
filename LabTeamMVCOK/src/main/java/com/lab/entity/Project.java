package com.lab.entity;

public class Project {
	private Integer Prid;
	private String PrTheme;
	private String PrDescription;
	private String PrUpdate;//时间
	private String PrBackground;
	private String PrKeyWords;
	private String PrPicture;
	private String PrAnnotation;
	
	public Integer getPrid() {
		return Prid;
	}
	public void setPrid(Integer prid) {
		Prid = prid;
	}
	public String getPrTheme() {
		return PrTheme;
	}
	public void setPrTheme(String prTheme) {
		PrTheme = prTheme;
	}
	public String getPrDescription() {
		return PrDescription;
	}
	public void setPrDescription(String prDescription) {
		PrDescription = prDescription;
	}
	public String getPrUpdate() {
		return PrUpdate;
	}
	public void setPrUpdate(String prUpdate) {
		PrUpdate = prUpdate;
	}
	public String getPrBackground() {
		return PrBackground;
	}
	public void setPrBackground(String prBackground) {
		PrBackground = prBackground;
	}
	public String getPrPicture() {
		return PrPicture;
	}
	public void setPrPicture(String prPicture) {
		PrPicture = prPicture;
	}
	public String getPrAnnotation() {
		return PrAnnotation;
	}
	public void setPrAnnotation(String prAnnotation) {
		PrAnnotation = prAnnotation;
	}
	public String getPrKeyWords() {
		return PrKeyWords;
	}
	public void setPrKeyWords(String prKeyWords) {
		PrKeyWords = prKeyWords;
	}
	
}
