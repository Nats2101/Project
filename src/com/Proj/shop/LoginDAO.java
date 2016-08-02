package com.Proj.shop;


public class LoginDAO {

	public boolean isValidUser(String id, String pwd) //method fro boolean begins with Is
	{System.out.println("LOGIN DAO");
		if(id.equals("niit") && pwd.equals("niit"))
		{
			return true;
		}
		return false;       //else not required
	}
}