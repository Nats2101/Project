package com.ecom.pickabook.model;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;


import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	private  boolean enabled=true;
	@Id
	@Column
    @GeneratedValue(strategy = GenerationType.AUTO)    //this is for auto 
	private int id;  
	@Column
    @Size(min=4, max=10, message="Name has to be atleast 4 to 10 alphabets!")
	private String fname;
	@Column
    @Size(min=4, max=10, message="Name has to be atleast 4 to 10 alphabets!")
	private String lname;  
	@Column
	private String bdate;  
	@Column
	@Size(min=10,max=10,message="10 digit number required!")
	private String contact;  
	@Column
	@Size(min=5, max=30, message="We need the complete address please!")
	private String address;  
	@Column
	@Email(message="Check your email id again!")
	private String email;  
	@Column
	@NotNull(message="This field cannot be empty!")
	private String Uname;  
	@Column
	@Size(min=4, message="Min 4 alphanumeric characters")
	private String password;
	
/*	 @OneToOne
	    @JoinColumn(name = "shippingAddressId")
	    private ShippingAddress shippingAddress;*/
/*
	    @OneToOne
	    @JoinColumn(name = "cartId")
	    @JsonIgnore
	    private Cart cart;*/
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getContact() {
		return contact;
	}
/*	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}*/
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}  
	
}