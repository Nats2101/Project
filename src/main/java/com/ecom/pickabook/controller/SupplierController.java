package com.ecom.pickabook.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.pickabook.model.Category;
import com.ecom.pickabook.model.Supplier;
import com.ecom.pickabook.model.Supplier;
import com.ecom.pickabook.services.SupplierServices;

@Controller
public class SupplierController {

	@Autowired
	SupplierServices supplierServices;

	@RequestMapping(value="/AllSuppliers")
	public ModelAndView AllGetSup() 
	{
		List<Supplier> list = supplierServices.listSupplier();
		ModelAndView model = new ModelAndView("/AllSuppliers");
		model.addObject("supplier", list);
		return model;
	}
	
	@RequestMapping(value="/AddSupplier", method = RequestMethod.GET)
	public ModelAndView AddGetSup() 
	{ 
		return new ModelAndView("AddSupplier","supplier",new Supplier());
	}
	    
	@RequestMapping(value="/AddSupplier", method = RequestMethod.POST)
	public ModelAndView AddPostSup (@ModelAttribute("supplier") @Valid Supplier s, BindingResult result, Model model) 
	{ 
		if(result.hasErrors()) {
	    	return new ModelAndView("AddSupplier");
	    }
		supplierServices.saveSupplier(s);
		List<Supplier> list = supplierServices.listSupplier();
		ModelAndView models = new ModelAndView("/AllSuppliers");
		models.addObject("supplier", list);
		return models;
	}
	
	@RequestMapping(value="/EditSupplier", method = RequestMethod.GET)
	public ModelAndView EditGetSup(@RequestParam("id") int id) 
	{ 
		Supplier s = supplierServices.getSupplierById(id);
		return new ModelAndView("EditSupplier","supplier",s);
	}
	    
	@RequestMapping(value="/EditSupplier", method = RequestMethod.POST)
	public ModelAndView EditPostSup (@ModelAttribute("supplier")@Valid Supplier s, BindingResult result, Model model) 
	{ 
		
		if(result.hasErrors()) {
	    	return new ModelAndView("EditSupplier");
	    }
		supplierServices.updateSupplier(s);
		List<Supplier> list = supplierServices.listSupplier();
		ModelAndView models = new ModelAndView("/AllSuppliers");
		models.addObject("supplier", list);
		return models;
	}
	
	@RequestMapping(value="/DeleteSupplier", method=RequestMethod.GET )
	public String  DeleteSupPage()
	{
		return "DeleteSupplier";
	}
	@RequestMapping(value="/DeleteSupplier", method=RequestMethod.POST)
	public ModelAndView  DeleteSupActionPage(@ModelAttribute("supplier") Supplier s, Model model)
	{
		supplierServices.deleteSupplier(s);
		List<Supplier> list = supplierServices.listSupplier();
		ModelAndView models = new ModelAndView("/AllSuppliers");
		models.addObject("supplier", list);
		return models;
	}
	
}