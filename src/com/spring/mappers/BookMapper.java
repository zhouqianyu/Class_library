package com.spring.mappers;

import java.util.List;

import org.springframework.stereotype.Component;

import com.spring.models.Book;

public interface BookMapper {
	List<Book> findAll();
	Book findById(int id);
	void add(Book book);
	void modify(Book book);
	void delete(int id);

}
