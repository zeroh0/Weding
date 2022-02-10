package com.oracle.Weding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.Weding.dao.MemberDao;
import com.oracle.Weding.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired private MemberDao md;
	
	/**
	 * 회원가입 서비스
	 * 작성자 - 임채영
	 */
	@Override
	public int join(Member member) {
		int result = md.join(member);
		
		return result;
	}

	
	/**
	 * 로그인 서비스 
	 * 작성자 - 임채영
	 */
	@Override
	public Member login(Member member) {
		System.out.println("MemberServiceImpl login Start...");
		Member result = md.login(member);
		System.out.println("MemberServiceImpl login result ->" + result);
		
		return result;
	}


	/**
	 * 아이디 중복체크 서비스
	 * 작성자 - 임채영
	 */
	@Override
	public int memberIdConfirm(Member member) {
		int result = md.memberIdConfirm(member);
		System.out.println("****** 서비스임플 result :  " + result);
		
		return result;
	}


	/**
	 * 이메일 인증 서비스
	 * 작성자 - 임채영
	 */
	@Override
	public String mailConfirm(Member member) {
		String result = md.mailConfirm(member);
		
		return null;
	}
	

	/**
	 * 회원정보 조회 서비스
	 * 작성자 - 조소현
	 * 목적 - 회원수정을 위한 정보 가져오기 
	 */
	@Override
	public Member readMember(String id) {
		System.out.println("MemberServiceImpl readMember Start...");
		Member member = md.readMember(id);
		
		return member;
	}

	
	/**
	 * 회원정보 수정 서비스
	 * 작성자 - 조소현
	 */
	@Override
	public int memberUpdate(Member member) {
		System.out.println("MemberServiceImpl memberUpdate Start...");
		int update = 0;
		update = md.memberUpdate(member);
		
		return update;
	}

	
	/**
	 * 비밀번호 수정 서비스
	 * 작성자 - 조소현
	 */
	@Override
	public int pwUpdate(Member member) {
		System.out.println("MemberServiceImpl pwUpdate Start...");
		int result = 0;
		result = md.pwUpdate(member);
		
		return result;
	}
	
	
	/**
	 * 회원 탈퇴 서비스
	 * 작성자 - 김태근
	 */
	@Override
	public int memberDelete(Member member) {
		int memberDelete;
		memberDelete = md.memberDelete(member);
		
		return memberDelete;
	}
	
}
