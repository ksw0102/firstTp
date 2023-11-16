package com.tp.deliverSecurity.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tp.deliverSecurity.common.dto.BaseResponse;
import com.tp.deliverSecurity.common.status.ResultCode;
import com.tp.deliverSecurity.member.dto.MemberDto;
import com.tp.deliverSecurity.member.dto.MemberLoginDto;
import com.tp.deliverSecurity.member.service.MemberService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/member")
@CrossOrigin(origins = "http://localhost:3000", methods = { RequestMethod.GET, RequestMethod.POST })
public class MemberController {
	private MemberService memberService;

	@Autowired
	public MemberController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}

	@PostMapping("signup")
	public ResponseEntity<BaseResponse<Void>> signUp(@RequestBody @Valid MemberDto memberDto) {
		return new ResponseEntity<BaseResponse<Void>>(
				new BaseResponse<Void>(ResultCode.SUCCESS.name(), null, memberService.signUp(memberDto)),
				HttpStatus.CREATED);
	}

	@PostMapping("login")
	public ResponseEntity<BaseResponse<Void>> login(@RequestBody @Valid MemberLoginDto memberLoginDto) {
		return new ResponseEntity<>(
				new BaseResponse<Void>(ResultCode.SUCCESS.name(), null, memberService.login(memberLoginDto)),
				HttpStatus.OK);
	}

}
