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
import com.ecom.pickabook.services.CategoryServices;

@Controller
public class CategoryController {

	@Autowired
	CategoryServices categoryServices;
	
	@RequestMapping(value="/AllCategory")
	public ModelAndView AllGetCat() 
	{
		List<Category> list = categoryServices.listCategory();
		ModelAndView model = new ModelAndView("/AllCategory");
		model.addObject("category", list);
		return model;
	}
	
	@RequestMapping(value="/AddCategory", method = RequestMethod.GET)
	public ModelAndView AddGetCat() 
	{ 
		return new ModelAndView("AddCategory","category",new Category());
	}
	    
	@RequestMapping(value="/AddCategory", method = RequestMethod.POST)
	public ModelAndView AddPostCat (@ModelAttribute("category") @Valid Category c,BindingResult result, Model model) 
	{
		if(result.hasErrors()) {
	    	return new ModelAndView("AddCategory");
	    }
		categoryServices.saveCategory(c);
		List<Category> list = categoryServices.listCategory();
		ModelAndView models = new ModelAndView("/AllCategory");
		models.addObject("category", list);
		return models;
	}
	
	@RequestMapping(value="/EditCategory", method = RequestMethod.GET)
	public ModelAndView EditGetCat(@RequestParam("id") int id) 
	{ 
		Category c = categoryServices.getCategoryById(id);
		return new ModelAndView("EditCategory","category",c);
	}
	    
	@RequestMapping(value="/EditCategory", method = RequestMethod.POST)
	public ModelAndView EditPostCat (@ModelAttribute("category") @Valid Category c,BindingResult result, Model model) 
	{ 
		if(result.hasErrors()) {
	    	return new ModelAndView("EditCategory");
	    }
		categoryServices.updateCategory(c);
		List<Category> list = categoryServices.listCategory();
		ModelAndView models = new ModelAndView("/AllCategory");
		models.addObject("category", list);
		return models;
	}
	
	@RequestMapping(value="/DeleteCategory", method=RequestMethod.GET )
	public ModelAndView DeleteCatPage(@RequestParam("id") int id)
	{
		Category c = categoryServices.getCategoryById(id);
		return new ModelAndView("DeleteCategory","category",c);
	}
	@RequestMapping(value="/DeleteCategory", method=RequestMethod.POST)
	public ModelAndView  DeleteCatActionPage(@ModelAttribute("category") Category c, Model model)
	{
		categoryServices.deleteCategory(c);
		List<Category> list = categoryServices.listCategory();
		ModelAndView models = new ModelAndView("/AllCategory");
		models.addObject("category", list);
		return models;
	}
	
}