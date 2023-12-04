package com.tp.deliver.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "delivers")
public class Deliver {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column
	private String address;
	@Column
	private String review;
	@ManyToOne
	private Food food;
	private int quantity;

// 푸드당 딜리버를 만들어줘야한다
	public Deliver() {
		super();
	}

	public Deliver(long id, String address, String review) {
		super();
		this.id = id;
		this.address = address;
		this.review = review;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

}
