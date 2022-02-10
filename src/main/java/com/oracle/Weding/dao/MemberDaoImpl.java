package com.oracle.Weding.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.Weding.dto.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired private SqlSession session;
	
	/**
	 * 회원가입 서비스
	 * 작성자 - 임채영
	 */
	@Override
	public int join(Member member) {//가입
		int result = 0;
		System.out.println("MemberDaoImpl join start... .... ....... .");
		try {
			System.out.println(member);
			result = session.insert("memberJoin", member);
			System.out.println("insert result" + result);
		} catch (Exception e) {
			System.out.println("MemberDaoImpl join -> " + e.getMessage());
		}
		
		return result;
	}


	/**
	 * 로그인 서비스 
	 * 작성자 - 임채영
	 */
	@Override
	public Member login(Member member) {//로그인
		Member result = null;
		System.out.println("MemberDaoImpl login start... ..... ....... .");
		try {
			result = session.selectOne("memberLoginSelectOne", member);
			System.out.println("selectOne memberOut -> " + result);
		} catch (Exception e) {
			System.out.println("MemberDaoImpl login -> " + e.getMessage());
		}
		
		return result;
	}


	/**
	 * 아이디 중복체크 서비스
	 * 작성자 - 임채영
	 */
	@Override
	public int memberIdConfirm(Member member) {//아이디중복확인
		int result = 0; //
		System.out.println("MemberDaoImpl !!!! memberIdConfirm start ...................");
		System.out.println(member);
		try {
			result = session.selectOne("memberIdConfirm", member); //
			System.out.println("memberIdConfirm" + result);
		} catch (Exception e) {
			System.out.println("MemberDaoImpl *** memberIdConfirm -> " + e.getMessage());
		}
		
		return result;
	}


	/**
	 * 이메일 인증 서비스
	 * 작성자 - 임채영
	 */
	@Override
	public String mailConfirm(Member member) {//메일확인
		Member result = null;
		System.out.println("MemberDaoImpl --- mailConfirm start .. ..");
		System.out.println(member);
		
		return null;
	}

	
	/**
	 * 회원정보 조회 서비스
	 * 작성자 - 조소현
	 * 목적 - 회원수정을 위한 정보 가져오기 
	 */
	@Override
	public Member readMember(String id) {
		System.out.println("MemberDaoImpl readMember Start...");
		Member member = new Member();
		try {
			member = session.selectOne("memberSelectOne", id);
			System.out.println("MemberDaoImpl readMember member.getName()->"+member.getName());
		}catch(Exception e) {
			System.out.println("MemberDaoImpl readMember Exception->"+e.getMessage());
		}
		
		return member;
	}

	/**
	 * 회원정보 수정 서비스
	 * 작성자 - 조소현
	 */
	@Override
	public int memberUpdate(Member member) {
		System.out.println("MemberDaoImpl memberUpdate Start...");
		int update =0;
		try {
			update = session.update("memberUpdate", member);
		}catch(Exception e) {
			System.out.println("MemberDaoImpl memberUpdate Exception->"+e.getMessage());
		}
		
		return update;
	}

	/**
	 * 비밀번호 수정 서비스
	 * 작성자 - 조소현
	 */
	@Override
	public int pwUpdate(Member member) {
		System.out.println("MemberDaoImpl pwUpdate Start...");
		int result =0;
		try {
			result = session.update("pwUpdate", member);
		}catch(Exception e) {
			System.out.println("MemberDaoImpl pwUpdate Exception->"+e.getMessage());
		}
		
		return result;
	}
	
	/**
	 * 회원 탈퇴 서비스
	 * 작성자 - 김태근
	 */
	@Override
	public int memberDelete(Member member) {
		System.out.println("MemberDaoImpl memberDelete Start...");
		int memberDelete = 1;
		try {
			memberDelete = session.update("memberDelete", member);
		}catch (Exception e) {
			System.out.println("MemberDaoImpl memberDelete Exception -> " + e.getMessage());
		}
		
		return memberDelete;
	}
	
}
