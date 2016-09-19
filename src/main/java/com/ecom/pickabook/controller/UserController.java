package com.ecom.pickabook.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.pickabook.model.User;
import com.ecom.pickabook.model.UserRoles;
import com.ecom.pickabook.services.UserServices;
@Controller 
public class UserController {
	@Autowired
	UserServices userServices;
	
		@RequestMapping(value="/Register" ,method=RequestMethod.GET )
		public ModelAndView RegisterPage()
		{
			return new ModelAndView("Register","register",new User());
		}
		@RequestMapping(value="/Register" ,method=RequestMethod.POST )
		public String RegisterActionPage(@ModelAttribute("register") @Validated User u, BindingResult result, Model model)
		{
			if (result.hasErrors()) {
				return "Register";
			}
			else{
				userServices.save(u);
				return "Login";				
			}
		}

		@RequestMapping(value="/Login", method = RequestMethod.GET)
		 public ModelAndView Login() 
			{ 
			return new ModelAndView("Login");
			}
		
		 @RequestMapping(value="/fail2login", method = RequestMethod.GET)
		 public ModelAndView loginerror(ModelMap model) {
		 
		
		  return new ModelAndView("Login","error","Invalid username and password!");
		 
		 }

		 
		 @RequestMapping(value="/logout", method = RequestMethod.GET)
		 public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) {
			 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			 if (auth != null) {
			 new SecurityContextLogoutHandler().logout(request, response, auth);
			 }
		 
		  return new ModelAndView("Login","msg",  "You've been logged out successfully.");
		 
		 }
		 @RequestMapping(value = "/welcome", method = RequestMethod.GET)
		    public String printWelcome(ModelMap model, Principal principal, UserRoles ur,HttpSession session) 
		 	{
			 String name = principal.getName(); //get logged in username
			/* String role = ur.getAuthority();
			 System.out.println(role);
		      model.addAttribute("Role ", role);
		      model.addAttribute("username", name);*/
			 session.setAttribute("username", name);
			  return "Home";
		    }	
		 }

