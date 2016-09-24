package com.ecom.pickabook.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.pickabook.model.Cart;


@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public CartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public boolean addToCart(Cart cart) {
		
		try {
			sessionFactory.getCurrentSession().save(cart);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}
		/*
		Session session = mySessionFactory.openSession();
		int productId = cart.getProductId();
		Product product = (Product)session.get(Product.class, productId);
		double price = product.getPrice();
		cart.setPrice(price);
		cart.setProductName(product.getName());
		session.saveOrUpdate(cart);
		System.out.println("Item is being added to the cart");
		*/
	}
	
	@Transactional
	public List<Cart> getCart() {
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(Cart.class);
		List<Cart> cartList = criteria.list();
		session.close();
		return cartList;
		
	}
	
	/*
	@Transactional
	public void delete(int id) {
		System.out.println("Delete Cart Item");
		Session session = mySessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Cart cart =(Cart)session.load(Cart.class,id);
		
		session.delete(cart);
		tx.commit();
		session.close();
		
	}
	
	
	@Transactional
	public Cart findById(int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		if(cart!=null)
			return cart;
		else
		return null;
	}
	
	@Transactional
	public String updateCart(Cart cart) {
		System.out.println("Updating Cart");
		Session session=mySessionFactory.openSession();
		
		Criteria c = session.createCriteria(Cart.class);
	//	c.add(Restrictions.eq("userId", cart.getUserId()));
		List<Cart> cartUser = c.list();
		System.out.println(cartUser);
		for(Cart user : cartUser)
		{
			user.setAddress(cart.getAddress());
 
			 
			user.setPhoneNo(cart.getPhoneNo());
			session.update(user);
		}
		//session.saveOrUpdate(cart);
		session.flush();
		return "success";
	}

*/	
	
}
