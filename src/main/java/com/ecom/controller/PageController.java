package com.ecom.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;

@Controller
public class PageController {
	
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
}
