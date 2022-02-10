package com.oracle.Weding.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.Weding.dto.Member;
import com.oracle.Weding.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired private MemberService ms;
	@Autowired private JavaMailSender mailSender;
	
	/**
	 * 회원가입 폼으로 이동
	 * 작성자 - 임채영
	 * 
	 * @return
	 */
	@RequestMapping(value="joinForm")
	public String joinForm() {
		System.out.println("MemberController Start joinForm.. ......");
		
		return "/member/joinForm";
	}
	
	
	/**
	 * 회원가입 처리
	 * 작성자 - 임채영
	 * 
	 * @param member
	 * @return
	 */
	@PostMapping(value="join")
	public String join(Member member) {
		System.out.println("MemberController Start Join .");
		int result = ms.join(member);
		
		if(result>0) {
			return "redirect:main"; //값이 0보다 클 때(회원가입성공), 1반하면 메인페이지로(가입완료)
		} else {
			return "redirect:joinForm"; //값>0 이 아닌 경우, joinForm으로 리턴(가입실패)
		}
		
	}
	
	
	/**
	 * 로그인 폼으로 이동
	 * 작성자 - 임채영
	 */
	@RequestMapping(value="/loginForm") //로그인폼으로 이동
	public String loginForm() {
		System.out.println("MemberController Start loginForm .... ....... ....");
		
		return "/member/loginForm";
	}
	

	/**
	 * 로그인 처리
	 * 작성자 - 임채영
	 */
	@RequestMapping(value="login") //로그인 
	public String login(Member member, HttpSession session) { 
		System.out.println("MemberController Start Login.......");
		Member result = ms.login(member);
		
		if(result != null) {
			session.setAttribute("member", result);
			return "redirect:main";
		} else {
			return "redirect:loginForm"; 
		}
		
	}
	
	
	/**
	 * 로그아웃
	 * 작성자 - 임채영
	 */
	@RequestMapping(value="logout") //로그아웃
	public String logout(HttpSession session) {
		System.out.println("Membercontroller start logout....");
		session.invalidate(); //세션 초기화
		
		return "redirect:main";
	}
	
	
	/**
	 * 아이디 중복체크
	 * 작성자 - 임채영
	 */
	@ResponseBody 
	@RequestMapping(value="memberIdConfirm")
	public int memberIdConfirm(Member member) {
		System.out.println("MemberController start memberIdConfirm........");
		System.out.println(member.getId());
		int result = ms.memberIdConfirm(member);
		System.out.println("****** 컨트롤러 result :  " + result);
		
		return result;
	}
	
	
	/**
	 * 이메일 인증
	 * 작성자 - 임채영
	 */
	@ResponseBody
	@RequestMapping(value="mailConfirm")
	public String mailConfirm(HttpServletRequest request, Model model) {
		System.out.println("mailSending...");
		String tomail = request.getParameter("email");   // 받는 사람 이메일
		System.out.println("tomail " + tomail);
		String setfrom = "cylim.dev@gmail.com";
		String title = "mailConfirm 입니다";                 // 제목
		String tempPassword = "";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(setfrom);    
			messageHelper.setTo(tomail);       // 받는사람 이메일
			messageHelper.setSubject(title);   
			tempPassword = (int) (Math.random() * 999999) + 1 + "";
			messageHelper.setText("임시 비밀번호입니다 : " + tempPassword);
			System.out.println("임시 비밀번호입니다 : " + tempPassword);
			mailSender.send(message);
			
			model.addAttribute("check", 1);   // 정상 전달
		} catch (Exception e) {
			System.out.println(e);
			model.addAttribute("check", 2);  // 메일 전달 실패
		}
		
		return tempPassword;
	}
	
	
	/**
	 * 회원정보 수정 폼으 이동 
	 * 작성자 - 조소현
	 */
	@GetMapping(value="memberUpdateForm")
	public String memberUpdateForm(HttpSession session, Model model) {
		System.out.println("MemberController memberUpdateForm Start...");
		
		//세션 객체 안에 있는 ID정보 저장 
		Member m1 = (Member) session.getAttribute("member");
		System.out.println("MemberController 회원의 id->"+m1.getId());
		
		Member member = ms.readMember(m1.getId());
		model.addAttribute("member", member);
		
		return "mypage/memberUpdateForm";
	}

	/**
	 * 회원정보 수정 처리
	 * 작성자 - 조소현
	 */
	@PostMapping(value="memberUpdate")
	public String memberUpdate(HttpSession session, Member member, Model model) {
		System.out.println("MemberController memberUpdate Start…");
		//세션 객체 안에 있는 ID정보 저장 
		Member m1 = (Member) session.getAttribute("member");
		member.setId(m1.getId());
		member.setEmail(member.getEmail1()+"@"+member.getEmail2());
		System.out.println("이메일합치기 -> "+member.getEmail());
		int update = ms.memberUpdate(member);
		if(update>0) {
			model.addAttribute("msg", "회원 수정되었습니다.");
		}else {
			model.addAttribute("msg", "회원 수정에 실패했습니다.");
		}
		
		return "redirect:main";
	}
	
	
	/**
	 * 비밀번호 변경 폼으로 이동 
	 * 작성자 - 조소현
	 */
	@RequestMapping(value="pwChangeForm")
	public String pwChangeForm() {
		System.out.println("MemberController pwChangeForm Start…");
		
		return "mypage/pwchangeForm";
	}
	
	
	/**
	 * 비밀번호 변경 처리
	 * 작성자 - 조소현 
	 */
	@PostMapping(value="pwUpdate")
	public String pwUpdate(Member member, HttpSession session) {
		System.out.println("MemberController pwChange Start…");
		Member m1 = (Member) session.getAttribute("member");
		member.setId(m1.getId());
		int result = ms.pwUpdate(member);
		
		return "redirect:main";
	}
	
	
	/**
	 * 회원 탈퇴
	 * 작성자 - 김태근
	 */
	@RequestMapping(value = "memberDelete")
	public String memberDelete(Member member, Model model, HttpSession session) {
		System.out.println("MemberController memberDelete Start...");
		int memberDelete = ms.memberDelete(member);
		System.out.println("MemberController memberDelete => " + memberDelete);
		session.invalidate(); //세션 초기화
		
		return "redirect:main";
	}

}
