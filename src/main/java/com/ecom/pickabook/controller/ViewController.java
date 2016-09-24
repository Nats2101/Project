package com.ecom.pickabook.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecom.pickabook.dao.ProductDAOImpl;
import com.ecom.pickabook.model.Product;
import com.ecom.pickabook.services.ProductServices;
import com.ecom.pickabook.util.FileUtil;

@Controller 
public class ViewController {
	
	private String path = "C:\\ANIIT\\Workspace4\\PickABook\\src\\main\\webapp\\resource\\image\\"; 
	
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	 public ModelAndView Home() 
		{ 
		return new ModelAndView("Home");
		}
	@RequestMapping(value="/Fiction", method = RequestMethod.GET)
	 public ModelAndView Fiction() 
		{ 
		return new ModelAndView("Fiction");
		}
	@RequestMapping(value="/Nonfiction", method = RequestMethod.GET)
	 public ModelAndView Nonfiction() 
		{ 
		return new ModelAndView("Nonfiction");
		}
	@RequestMapping(value="/Comic", method = RequestMethod.GET)
	 public ModelAndView Comic() 
		{ 
		return new ModelAndView("Comic");
		}
	@RequestMapping(value="/Children", method = RequestMethod.GET)
	 public ModelAndView Children() 
		{ 
		return new ModelAndView("Children");
		}

	@RequestMapping(value="/Aboutus", method = RequestMethod.GET)
	 public ModelAndView Aboutus() 
		{ 
		return new ModelAndView("Aboutus");
		}
	////////////////////////////////////////////////////////
	@Autowired
	ProductServices productServices;
	Product product;
	
	@RequestMapping(value="/AllProducts", method=RequestMethod.GET )
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

	@RequestMapping(value="/AddProducts", method = RequestMethod.GET)
	public ModelAndView AddGet() 
	{ 
		return new ModelAndView("AddProducts","product",new Product());
	}
	private static final  Logger logger =LoggerFactory.getLogger(ProductDAOImpl.class);    
	
	@RequestMapping(value="/AddProducts", method = RequestMethod.POST)
	public String AddPost( @ModelAttribute("product")  @Validated Product p, BindingResult result, 
			@RequestParam("image") MultipartFile image, Model model) 
	{ 
		//System.out.println("control");
		if (result.hasErrors()) {
			//logger.debug("errors in form" +result.toString());
			//System.out.println("hhhhh");
			return "AddProducts";
		}
		else{
			//System.out.println("THE PRODUCT ID ISSS "+p.getId());
		FileUtil.upload(path, image,p.getName()+".jpg");
		productServices.save(p);
		return "AllProducts";
		}
	}
	
	@RequestMapping(value="/details", method = RequestMethod.GET)
	public String Details () 
	{ 
		return "details";
	}
	
	@RequestMapping(value="/EditProducts", method = RequestMethod.GET)
	public ModelAndView EditGet(@RequestParam("id") int id) 
	{ 
		Product p = productServices.getById(id);
		return new ModelAndView("EditProducts","product",p);
	}
	    
	@RequestMapping(value="/EditProducts", method = RequestMethod.POST)
	public String EditPost (@ModelAttribute("product") @Validated Product p, BindingResult result, Model model) 
	{ 
		 
		if (result.hasErrors()) {
			return "EditProducts";
		}
		else {
		productServices.update(p); 
		return "AllProducts";
		}
	}
	
	@RequestMapping(value="/DeleteProducts", method=RequestMethod.GET )
	public String  DeletePage()
	{
		return "DeleteProducts";
	}
	@RequestMapping(value="/DeleteProducts", method=RequestMethod.POST)
	public String  DeleteActionPage(@RequestParam("id") int id)
	{
		productServices.delete(id);
		return "AllProducts";
	}
	
	
}


