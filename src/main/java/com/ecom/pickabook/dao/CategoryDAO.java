package com.ecom.pickabook.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ecom.pickabook.model.Category;

@Repository
public interface CategoryDAO {

	public boolean saveCategory(Category category);
	
	public boolean updateCategory(Category category);
	
	public boolean deleteCategory(Category category);
	
	public Category getCategoryById(int id);
	
	public List<Category> listCategory();
}
