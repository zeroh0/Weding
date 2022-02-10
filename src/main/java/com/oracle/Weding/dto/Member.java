package com.oracle.Weding.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Member {
	private String id;				//아이디
	private String main_cat;		//대분류
	private String mini_cat;		//중분류
	private String password;		//비밀번호
	private String name;			//이름
	private String phone;			//연락처
	private String email;			//이메일
	private String zipCode;			//우편번호
	private String roadAddress;		//도로명주소
	private String detailAddress;	//상세주소
	private String m_status;		//회원유형 == 회원상태(1. 일반(default) = 1, 2.삭제처리된 회원 = 0)
	
	// 이메일 아이디 @ 주소
	private String email1; // 아이디
	private String email2; // 주소
}