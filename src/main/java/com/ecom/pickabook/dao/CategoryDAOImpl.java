package com.ecom.pickabook.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.pickabook.model.Category;


@EnableTransactionManagement
@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
@Autowired
	private SessionFactory sessionFactory;
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	
	@Transactional
	public boolean save(Category category) {
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}
	}
	@Transactional
	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}
	}
	@Transactional
	public void delete(Integer id) {
		 Category c = (Category) sessionFactory.getCurrentSession().load(Category.class, id);
	        if (null != c) {
	            sessionFactory.getCurrentSession().delete(c);
	        }
	}
	@Transactional
	public Category getById(int id) {
		String hql = "from Category where id = " + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Category> list = query.list();
		if (list == null) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Transactional
	public List<Category> list() {
		String hql = "from Product";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
}







