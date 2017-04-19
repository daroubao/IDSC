package com.lab.entity;

public class ResultContent {
	private String Title;//标题
	private String content;//简介
	private String url;//跳转链接
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "{\"Title\":\"" + Title + "\",\"content\":\"" + content
				+ "\",\"url\":\"" + url + "\"}";
	}
	
}
