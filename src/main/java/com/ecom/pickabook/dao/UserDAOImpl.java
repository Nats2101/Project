package com.ecom.pickabook.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.pickabook.model.User;
import com.ecom.pickabook.model.UserRoles;

@EnableTransactionManagement
@Repository("UserDAO")
public class UserDAOImpl implements UserDAO{
	
@Autowired
	private SessionFactory sessionFactory;
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	
	@Transactional
	public boolean save(User user) {
		try {
			UserRoles ur = new UserRoles();
			sessionFactory.getCurrentSession().save(user);
			ur.setAuthority("ROLE_USER");
			ur.setUid(user.getId());
			sessionFactory.getCurrentSession().save(ur);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
			
			
}
	}
}