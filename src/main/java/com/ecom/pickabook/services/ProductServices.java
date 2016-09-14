package com.ecom.pickabook.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.pickabook.dao.ProductDAO;
import com.ecom.pickabook.model.Product;
@Service
public class ProductServices {
	@Autowired
	private ProductDAO productDAO;
	
	public void save(Product p) {
		productDAO.save(p);
	}
	public void update(Product p) {
		productDAO.update(p);
	}
	public List<Product> list() {
		return productDAO.list();
	}
	public Product getById(int id) {
		return productDAO.getById(id);
	}
	public void delete(Integer id) {
		productDAO.delete(id);
	}
}
