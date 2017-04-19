package com.lab.dao.publication;

import java.util.List;

import com.lab.entity.Publication;

public interface BookDao {
	public List<Publication> getAllBook();
	public Publication getBook(String id);
	public List<Publication> getBooks();//获得最新的4本书
}
