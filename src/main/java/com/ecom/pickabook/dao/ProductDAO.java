package com.ecom.pickabook.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ecom.pickabook.model.Product;

@Repository
public interface ProductDAO {

	public boolean save(Product product);
	
	public boolean update(Product product);
	
	public void delete(Integer id);
	
	public Product getById(int id);
	
	public List<Product> list();
}
