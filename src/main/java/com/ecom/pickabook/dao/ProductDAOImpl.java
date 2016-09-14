package com.ecom.pickabook.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.pickabook.model.Product;

@EnableTransactionManagement
@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {
	
@Autowired
	private SessionFactory sessionFactory;
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	private static final  Logger log =LoggerFactory.getLogger(ProductDAOImpl.class);
	
	@Transactional
	public boolean save(Product product) {
		try {
			log.debug("starting of the method save");
			sessionFactory.getCurrentSession().save(product);
			log.debug("Ending of the method save");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.error("Exception occurred in save method"+e.getMessage());
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean update(Product product) {
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}
	}
	@Transactional
	public void delete(Integer id) {
		 Product p = (Product) sessionFactory.getCurrentSession().load(Product.class, id);
	        if (null != p) {
	            sessionFactory.getCurrentSession().delete(p);
	        }
	}
	@Transactional
	public Product getById(int id) {
		String hql = "from Product where id = " + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> list = query.list();
		if (list == null) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Transactional
	public List<Product> list() {
		String hql = "from Product";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
}







