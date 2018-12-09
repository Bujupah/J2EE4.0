package com.beans;
import java.sql.*;
public class Product {
	private String name;
	private int price;
	private String description;
	private int quantity;
	private Blob image;
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
