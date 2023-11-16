package com.tp.deliverSecurity.member.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tp.deliverSecurity.member.model.Member;

public interface MemberRepository extends JpaRepository<Member, Long>{

	Member findByLoginId(String loginId);
}
