package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.dao.MemberDAO;
import kh.spring.dto.MemberDTO;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberDAO dao;
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) throws Exception{
		e.printStackTrace();
		return "error";
	}
	
	//회원가입 페이지로
	@RequestMapping("signupPage")
	public String toSignupPage() throws Exception{
		return "member/signupForm";
	}
	
	//회원가입
	@PostMapping("signup")
	public String signup(MemberDTO dto) throws Exception{
		int result=dao.signup(dto);
		if(result==1) {System.out.println("회원가입 성공");}
		return "redirect:/";
	}
	
	//마이페이지에 정보 출력
	
	//마이페이지 정보 수정
	
	//로그인
	public boolean login() throws Exception{}
	
	//로그아웃

	//탈퇴하기
	@RequestMapping("delete")
	public String delete()throws Exception{
		int result=dao.delete();
	}
	
}
