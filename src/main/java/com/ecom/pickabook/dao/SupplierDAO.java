package com.ecom.pickabook.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ecom.pickabook.model.Supplier;


@Repository
public interface SupplierDAO {

	public boolean saveSupplier(Supplier supplier);
	
	public boolean updateSupplier(Supplier supplier);
	
	public boolean deleteSupplier(Supplier supplier);
	
	public Supplier getSupplierById(int id);
	
	public List<Supplier> listSupplier();
}
