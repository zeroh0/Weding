package com.oracle.Weding.dao;

import com.oracle.Weding.dto.Member;

public interface MemberDao {
	int 		join(Member member);
	Member      login(Member member);
	int 		memberIdConfirm(Member member);
	String      mailConfirm(Member member);
	Member 		readMember(String id);
	int 		memberUpdate(Member member);
	int 		pwUpdate(Member member);
	int 		memberDelete(Member member);
}
