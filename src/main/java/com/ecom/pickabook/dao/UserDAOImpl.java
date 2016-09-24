package com.ecom.pickabook.dao;

import java.util.List;

import javax.persistence.Query;

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

	@Transactional
	public User get(String id) {
		return sessionFactory.getCurrentSession().get(User.class, id);

	}

	@Transactional
	public List<User> listUser() {
		String hql = "from User";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<User> listOfUsers = query.getResultList();
		return listOfUsers;
	}

	@Transactional
	public User getUserByUserName(String Uname) {
		String hql = "from User where userName=" + "'" + Uname + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<User> listOfUsers = query.getResultList();
		if (listOfUsers != null && !listOfUsers.isEmpty()){
			return  listOfUsers.get(0);
		}
	return null;

	}


}