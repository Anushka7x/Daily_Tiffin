package com.expleo.TiffinService.entity;

import java.util.Date;

import jakarta.persistence.*;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String customerName;

    @Column(name = "itemname")
    private String itemName;

    private int quantity;
    
    private double price;
    
    private Date orderDate;
   
    public Order() {
		super();
	}

	public Order(Long id, String customerName, String itemName, int quantity, double price, Date orderDate) {
		super();
		this.id = id;
		this.customerName = customerName;
		this.itemName = itemName;
		this.quantity = quantity;
		this.price = price;
		this.orderDate = orderDate;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
    
    
}
