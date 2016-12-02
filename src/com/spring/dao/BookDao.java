package com.spring.dao;

import java.util.List;

import javax.resource.spi.AuthenticationMechanism;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.mappers.BookMapper;
import com.spring.models.Book;

@Repository
public class BookDao implements BookMapper {

	
	@Autowired
	BookMapper bookMapper;
	
	 public List<Book> findAll(){		 
		 return  bookMapper.findAll();
	 }
	 public Book findById(int id){
		return bookMapper.findById(id);
		 
	 }
	 public void add(Book book){
		 bookMapper.add(book);
	 }
	public void modify(Book book){
		bookMapper.modify(book);
	}
	public void delete(int id){
		bookMapper.delete(id);	
	}
	
	

}
