package com.lab.entity;

public class PageBean {
	private int currPage;//当前页
	private int totalPage;//总页数
	private int pageSize;//每页最大记录数
	private int totalCount;//总记录数
	private int personCount;	//人员记录数
	private int bookCount;		//书籍记录数
	private int paperCount;		//论文记录数
	private int inmeetingCount;	//会议记录数
	private String contents;//关键字
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPersonCount() {
		return personCount;
	}
	public void setPersonCount(int personCount) {
		this.personCount = personCount;
	}
	public int getBookCount() {
		return bookCount;
	}
	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}
	public int getPaperCount() {
		return paperCount;
	}
	public void setPaperCount(int paperCount) {
		this.paperCount = paperCount;
	}
	public int getInmeetingCount() {
		return inmeetingCount;
	}
	public void setInmeetingCount(int inmeetingCount) {
		this.inmeetingCount = inmeetingCount;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	@Override
	public String toString() {
		return "{\"currPage\":" + currPage + ",\"totalPage\":" + totalPage
				+ "}";
	}
	
}
