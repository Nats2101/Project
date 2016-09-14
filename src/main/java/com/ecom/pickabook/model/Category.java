package com.ecom.pickabook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="category")
public class Category {
	@Id
	@Column
    @GeneratedValue(strategy = GenerationType.AUTO)    //this is for auto 
	private int id;
	@Column
	@NotNull
    @Size(min=5, max=20, message="Name has to be atleast 5 to 20 alphabets!")
	private String name;
	@Column
	@NotNull
    @Size(min=5, max=20, message="Describe some more for us please!")
	private String description;
		
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
	/*public String toString()
	{
		return "{Product id :'"+id+"', name: '"+name+"',description: '"+description+"'}";
		
	}*/
}