package com.beans;

public class Panier {
	float SUM=0; // Total Price
	
	String[] ProdName; // Product[i] name;
	int[] Qtty; // Product[i] quantity 
	float[] Price; // Price of the product
	
	int i=0; // Index
	
	float calcSUM(){
		for(int i=0;i<Price.length;i++) {
			SUM+= Qtty[i]*Price[i];
		}
		return SUM;
	}
	
	void addToCart(String content,int qtty,float price) {
		ProdName[i] = content;
		Qtty[i] = qtty;
		Price[i] = price;
		i++;
	}
	
	String getPanierContent(int i) {
		return ProdName[i];
	}
	int getPanierQtty(int i) {
		return Qtty[i];
	}
	float getPanierPrice(int i) {
		return Price[i];
	}
}
