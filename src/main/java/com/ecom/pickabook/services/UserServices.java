package com.ecom.pickabook.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.pickabook.dao.UserDAO;
import com.ecom.pickabook.model.User;
@Service
public class UserServices {
	@Autowired
	private UserDAO userDAO;
	
	public void save(User user) {
		userDAO.save(user);
	}
}