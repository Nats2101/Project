package com.ecom.pickabook.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.pickabook.dao.SupplierDAO;
import com.ecom.pickabook.model.Supplier;
@Service
public class SupplierServices {
	@Autowired
	private SupplierDAO supplierDAO;
	
	public void saveSupplier(Supplier p) {
		supplierDAO.saveSupplier(p);
	}
	public void updateSupplier(Supplier p) {
		supplierDAO.updateSupplier(p);
	}
	public List<Supplier> listSupplier() {
		return supplierDAO.listSupplier();
	}
	public Supplier getSupplierById(int id) {
		return supplierDAO.getSupplierById(id);
	}
	public void deleteSupplier(Supplier p) {
		supplierDAO.deleteSupplier(p);
	}
}
