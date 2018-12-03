package com.beans;

public class Client {
	String name;
	String email;
	int phone;
	Panier panier = new Panier();
	
	void setName(String name){
		this.name=name;
	}
	void setEmail(String email) {
		this.email = email;
	}
	void setPhone(int phone) {
		this.phone = phone;
	}
	String getName() {
		return name;
	}
	String getEmail() {
		return email;
	}
	int getPhone() {
		return phone;
	}
	
}
