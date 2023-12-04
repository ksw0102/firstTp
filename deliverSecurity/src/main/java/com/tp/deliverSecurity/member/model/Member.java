package com.tp.deliverSecurity.member.model;

import java.time.LocalDate;

import com.tp.deliverSecurity.common.status.Gender;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(name = "test_member", uniqueConstraints = {
		@UniqueConstraint(name = "uk_member_login_id", columnNames = { "loginId" }) })
public class Member {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false, length = 30, updatable = false)
	private String loginId;

	@Column(nullable = false, length = 100)
	private String password;

	@Column(nullable = false, length = 30)
	private String name;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private LocalDate birthDate;

	@Column(nullable = false, length = 5)
	@Enumerated(EnumType.STRING)
	private Gender gender;

	public Member() {
		super();
	}

	public Member(Long id, String loginId, String password, String name, LocalDate birthDate, Gender gender
) {
		super();
		this.id = id;
		this.loginId = loginId;
		this.password = password;
		this.name = name;
		this.birthDate = birthDate;
		this.gender = gender;

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}


}
