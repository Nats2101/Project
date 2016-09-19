package com.ecom.pickabook.dao;

import java.util.List;

import com.ecom.pickabook.model.Cart;

public interface CartDAO {
	
	public void addToCart(Cart cart);
	public List<Cart> getCart();
	public void delete(int id);
	public Cart findById(int cartId);
}