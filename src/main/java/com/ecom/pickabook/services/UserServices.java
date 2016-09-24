package com.ecom.pickabook.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.pickabook.dao.UserDAO;
import com.ecom.pickabook.model.User;
@Service
public class UserServices {
	@Autowired
	private UserDAO userDAO;
	
	public void save(User user) 
	{
		userDAO.save(user);
	}
public List<User> listUser()
{
	 return userDAO.listUser();
}
	
	public User getUserByUserName(String Uname)
	{
		return userDAO.getUserByUserName(Uname);
	}
}