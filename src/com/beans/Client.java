package com.beans;

public class Client {
	String name;
	String email;
	int phone;
	Panier panier = new Panier();
	
	public void setName(String name){
		this.name=name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public int getPhone() {
		return phone;
	}
	
}
