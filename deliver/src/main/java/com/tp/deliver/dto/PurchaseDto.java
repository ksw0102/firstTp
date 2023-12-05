package com.tp.deliver.dto;

import com.tp.deliver.model.Food;

import jakarta.persistence.ManyToOne;

public class PurchaseDto {

	private long id;

	@ManyToOne
	private Food food;

	private int quantity;

	private String loginId;

	public PurchaseDto() {
	}

	public PurchaseDto(long id, Food food, int quantity, String loginId) {
		super();
		this.id = id;
		this.food = food;
		this.quantity = quantity;
		this.loginId = loginId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

}
