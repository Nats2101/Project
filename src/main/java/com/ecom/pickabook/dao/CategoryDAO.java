package com.ecom.pickabook.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ecom.pickabook.model.Category;


@Repository
public interface CategoryDAO {

	public boolean save(Category category);
	
	public boolean update(Category category);
	
	public void delete(Integer id);
	
	public Category getById(int id);
	
	public List<Category> list();
}
