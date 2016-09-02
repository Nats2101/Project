package com.ecom.pickabook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Product {
	@Id
	@Column
    @GeneratedValue(strategy = GenerationType.AUTO)    //this is for auto 
	private int id;  
	@Column
	private String name;  
	@Column
	private String description;  
	@Column
	private String category;  
	@Column
	private int price;  
	@Column
	private int quantity;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}  
	@Override
	public String toString()
	{
		return "{Product id :'"+id+"', name: '"+name+"',description: '"+description+"', category: '"+category+"', Price: '"+price+"', Quantity'"+quantity+"'}";
		
	}
}
