package com.ecom.pickabook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.pickabook.dao.CartDAO;
import com.ecom.pickabook.model.Cart;
@Controller
public class CartController {
	@Autowired
	CartDAO cartDAO;
	

	@RequestMapping(value="/user/addtocart")
	public ModelAndView addToCart(@ModelAttribute("cart")Cart cart, @RequestParam("productId")int productId)
	{
		System.out.println("Adding to cart");
		//cart.setProductId(productId);, @RequestParam("quantity")int quantity
		
		
		cart.getProduct().setId(productId);
 		cartDAO.addToCart(cart);
 	 	List cartList = cartDAO.getCart();
		ModelAndView model = new ModelAndView("/flow/Cart");
 		model.addObject("cartList",cartList);
		model.addObject("cartId",cart.getCartId());
		return model;
	}
	
	@RequestMapping(value="/user/viewcart")
	public ModelAndView viewCart(@ModelAttribute Cart cart)
	{
		List cartList = cartDAO.getCart();
		ModelAndView model = new ModelAndView("/flow/Cart");
 		model.addObject("cartList",cartList);
		model.addObject("cartId",cart.getCartId());
		return model;
	}
	/*
	@RequestMapping(value={"/collectbillinginfo","/user/collectbillinginfo"})
	public String collectBilling(@RequestParam("cartId") int cartId, @ModelAttribute("cart") Cart cart)
	{
		Cart mycart = cartDAO.findById(cartId); 
		
		System.out.println(mycart + " : "  + cartId);
		return "redirect:/cart?cartId="+cartId;
	}
	
	@RequestMapping(value="cart/delete/{cartId}", method = RequestMethod.GET)
	public String deleteCart(@PathVariable("cartId") int id, @ModelAttribute("cart")Cart cart)
	{
		System.out.println("Deleting Cart......");
		cartDAO.delete(id);
		return "redirect:/user/viewcart";
	}*/
}
