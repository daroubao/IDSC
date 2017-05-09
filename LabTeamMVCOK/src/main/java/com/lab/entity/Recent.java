package com.lab.entity;




public class Recent {
	
	private int Rid;
	private String Rthem;
	private String Rdate;
	private String RText;
	private String RUrl;
	private String RPicture;
	private Integer RProjectId;
	
	public String getRdate() {
		return Rdate;
	}
	public String getRText() {
		return RText;
	}
	public void setRText(String rText) {
		RText = rText;
	}
	public String getRUrl() {
		return RUrl;
	}
	public void setRUrl(String rUrl) {
		RUrl = rUrl;
	}
	public String getRPicture() {
		return RPicture;
	}
	public void setRPicture(String rPicture) {
		RPicture = rPicture;
	}
	public void setRdate(String rdate) {
		Rdate = rdate;
	}
	public int getRid() {
		return Rid;
	}
	public void setRid(int rid) {
		Rid = rid;
	}
	public String getRthem() {
		return Rthem;
	}
	public void setRthem(String rthem) {
		Rthem = rthem;
	}
	public Integer getRProjectId() {
		return RProjectId;
	}
	public void setRProjectId(Integer rProjectId) {
		RProjectId = rProjectId;
	}

	
}
