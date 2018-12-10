package com.beans;
import java.sql.*;
public class Product {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String name;
	private int price;
	private String description;
	private int quantity;
	private Blob image;
	public boolean equals(Product product) {
		return (this.id == product.getId() && this.name.equals(product.getName()));
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Blob  getImage() {
		return image;
	}
	public void setImage(Blob  image) {
		this.image = image;
	}
	
}
