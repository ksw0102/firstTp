package com.tp.deliverSecurity.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.deliverSecurity.common.exception.InvalidInputException;
import com.tp.deliverSecurity.member.dto.MemberDto;
import com.tp.deliverSecurity.member.dto.MemberLoginDto;
import com.tp.deliverSecurity.member.model.Member;
import com.tp.deliverSecurity.member.repository.MemberRepository;

import jakarta.transaction.Transactional;

@Transactional
@Service
public class MemberService {

	private final MemberRepository memberRepository;

	@Autowired
	public MemberService(MemberRepository memberRepository) {
		super();
		this.memberRepository = memberRepository;
	}

	public String signUp(MemberDto memberDto) {
		Member member = memberRepository.findByLoginId(memberDto.getLoginId());
		if (member != null) {
			throw new InvalidInputException("loginId", "이미 등록된 ID 입니다. 다른 ID로 입력 해주세요.");
		}
		member = new Member(null, memberDto.getLoginId(), memberDto.getPassword(), memberDto.getName(),
				memberDto.getBirthDate(), memberDto.getGender(), memberDto.getEmail());
		memberRepository.save(member);
		return "회원가입 완료!";
	}

	public String login(MemberLoginDto memberLoginDto) {
		Member member = memberRepository.findByLoginId(memberLoginDto.getLoginId());
		if (member != null && member.getPassword().matches(memberLoginDto.getPassword())) {
			return member.getLoginId();
		} else {
			throw new InvalidInputException("loginId", "ID 또는 PASSWORD가 일치하지 않습니다. 다시 입력 해주세요.");
		}
	}
}
