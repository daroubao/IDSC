package com.lab.service.publication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lab.dao.publication.BookDao;
import com.lab.entity.Publication;
@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookdao;
	@Override
	public List<Publication> getAllBook() {
		// TODO Auto-generated method stub
		return bookdao.getAllBook();
	}

	@Override
	public Publication getBook(String id) {
		// TODO Auto-generated method stub
		return bookdao.getBook(id);
	}

	public List<Publication> getBooks(){
		List<Publication> list=bookdao.getBooks();
		return list;
	}
}
