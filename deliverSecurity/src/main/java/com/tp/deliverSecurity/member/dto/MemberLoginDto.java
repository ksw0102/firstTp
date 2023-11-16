package com.tp.deliverSecurity.member.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

public class MemberLoginDto {

	
	@NotBlank
	private String loginId;
	
	@NotBlank
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@#$%^&*!])[A-Za-z\\d@#$%^&*!]{8,20}$",
            message = "영문,숫자,특수문자를 포함하여 10 ~ 20 자리로 입력해주세요.")
	private String password;
	
	public MemberLoginDto() {
		
	}
	public MemberLoginDto(String loginId, String password) {
		this.loginId = loginId;
		this.password = password;
		
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
}
