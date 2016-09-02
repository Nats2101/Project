package com.ecom.pickabook.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ecom.pickabook.model.Supplier;


@Repository
public interface SupplierDAO {

	public boolean save(Supplier supplier);
	
	public boolean update(Supplier supplier);
	
	public void delete(Integer id);
	
	public Supplier getById(int id);
	
	public List<Supplier> list();
}
