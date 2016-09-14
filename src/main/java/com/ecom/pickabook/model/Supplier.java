package com.ecom.pickabook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class Supplier {
	@Id
	@Column
    @GeneratedValue(strategy = GenerationType.AUTO)    //this is for auto 
	private int id;  
	@Column
	@NotEmpty(message="This field cannot be empty!")
    @Size(min=4, message="Name has to be atleast 4 alphabets!")
	
	private String name;  
	@Column
	@NotEmpty
	@Size(min=5, max=30, message="We need the complete address please!")
	private String address;  
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String toString()
	{
		return "{Supplier id :'"+id+"', name: '"+name+"',address: '"+address+"'}";
	}
}