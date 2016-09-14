package com.ecom.pickabook.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.pickabook.dao.CategoryDAO;
import com.ecom.pickabook.model.Category;

@Service
public class CategoryServices {
	@Autowired
	private CategoryDAO categoryDAO;
	
	public void saveCategory(Category c) {
		categoryDAO.saveCategory(c);
	}
	public void deleteCategory(Category c) {
		categoryDAO.deleteCategory(c);
	}
	public void updateCategory(Category c) {
		categoryDAO.updateCategory(c);
	}
	public List<Category> listCategory() {
		return categoryDAO.listCategory();
	}
	public Category getCategoryById(int id) {
		return categoryDAO.getCategoryById(id);
	}
	
}
