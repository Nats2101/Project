package com.ecom.pickabook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.pickabook.model.Product;
import com.ecom.pickabook.services.ProductServices;
@Controller 
public class ViewController {
	@RequestMapping(value="/", method = RequestMethod.GET)
	 public ModelAndView Home() 
		{ 
		return new ModelAndView("Home");
		}
	@RequestMapping(value="Fiction", method = RequestMethod.GET)
	 public ModelAndView Fiction() 
		{ 
		return new ModelAndView("Fiction");
		}
	@RequestMapping(value="Nonfiction", method = RequestMethod.GET)
	 public ModelAndView Nonfiction() 
		{ 
		return new ModelAndView("Nonfiction");
		}
	@RequestMapping(value="Comic", method = RequestMethod.GET)
	 public ModelAndView Comic() 
		{ 
		return new ModelAndView("Comic");
		}
	@RequestMapping(value="Children", method = RequestMethod.GET)
	 public ModelAndView Children() 
		{ 
		return new ModelAndView("Children");
		}
	@RequestMapping(value="Register", method = RequestMethod.GET)
	 public ModelAndView Register() 
		{ 
		return new ModelAndView("Register");
		}
	@RequestMapping(value="Login", method = RequestMethod.GET)
	 public ModelAndView Login() 
		{ 
		return new ModelAndView("Login");
		}
	@RequestMapping(value="Aboutus", method = RequestMethod.GET)
	 public ModelAndView Aboutus() 
		{ 
		return new ModelAndView("Aboutus");
		}
	
	@Autowired
	ProductServices productServices;
	
	@RequestMapping(value="AllProducts", method=RequestMethod.GET )
	public String AllProducts()
	{
		return "AllProducts";
	}
	@RequestMapping(value="data", method=RequestMethod.GET )
	public @ResponseBody List<Product> Data()
	{
		System.out.println(productServices.list());
		return productServices.list();
	}

	
	@RequestMapping(value="AddProducts", method = RequestMethod.GET)
	public ModelAndView AddGet() 
	{ 
		return new ModelAndView("AddProducts","product",new Product());
	}
	    
	@RequestMapping(value="AddProducts", method = RequestMethod.POST)
	public String AddPost (@ModelAttribute("product") Product p, Model model) 
	{ 
		productServices.save(p);
		return "Home";
	}
	
	@RequestMapping(value="details", method = RequestMethod.GET)
	public String Details () 
	{ 
		return "details";
	}
	@RequestMapping(value="EditProducts", method = RequestMethod.GET)
	public ModelAndView EditGet(@RequestParam("id") int id) 
	{ 
		Product p = productServices.getById(id);
		return new ModelAndView("EditProducts","product",p);
	}
	    
	@RequestMapping(value="EditProducts", method = RequestMethod.POST)
	public String EditPost (@ModelAttribute("product") Product p, Model model) 
	{ 
		productServices.update(p);
		return "details";
	}
	
	@RequestMapping(value="/delete/{id}")
	public String delete(@PathVariable("id") Integer p)
	{ 
		productServices.delete(p);
		return "details";
	}
	  
}


