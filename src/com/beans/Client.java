package com.beans;

public class Client {
	String name;
	String email;
	int phone;
	String pass;
	Product[] panier = new Product[100];
	int[] quantity = new int[100];
	public int i = 0;
	
	public double getTotalSum() {
		double sum = 0;
		for (int j = 0; j < i; j++) {
			sum += panier[j].getPrice() * quantity[j];
		}
		return sum;
	}
	
	public Product[] getPanier() {
		return panier;
	}

	public int[] getQuantity() {
		return quantity;
	}

	public void addToCart(Product product, int qty) {
		boolean already = false;
		for (int j = 0; j < i; j++) {
			if (panier[j].equals(product)) {
				panier[j] = product;
				if (quantity[j] + qty <= panier[j].getQuantity())
					quantity[j] += qty;
				else 
					quantity[j] = panier[j].getQuantity();
				already = true;
				break;
			}
		}
		if (!already) {
			panier[i] = product;
			quantity[i] = qty;
			i++;
		}
	}
	
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
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
