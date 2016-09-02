package com.ecom.pickabook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class Category {
	@Id
	@Column
    @GeneratedValue(strategy = GenerationType.AUTO)    //this is for auto 
	private String id;
	
	@Column(name="name")
	@Min(5)
	@Max(15)
	private String name;
	
	@NotEmpty
	private String description;
		
	public String getid() {
		return id;
	}
	public void setid(String Id) {
		id = Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}