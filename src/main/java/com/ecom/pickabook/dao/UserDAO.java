package com.ecom.pickabook.dao;


import java.util.List;

import com.ecom.pickabook.model.User;

public interface UserDAO {

	public boolean save(User user);
	
	User get(String id);
		
	List<User> listUser();
	
	User getUserByUserName(String Uname);
}
