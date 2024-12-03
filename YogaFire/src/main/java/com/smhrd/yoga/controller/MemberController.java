package com.smhrd.yoga.controller;

import java.io.IOException;
import java.lang.reflect.Member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.yoga.model.userInfo;
import com.smhrd.yoga.service.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MemberController {
	
	private final MemberService service;
	
	@GetMapping("/member/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/member")
	public String signup(userInfo member) {
		
		int res = service.signup(member);
		
		if(res ==  0) { 
			System.out.println("회원가입이 실패했습니다");
			return "redirect:/member/signup";
		}else {
			System.out.println("회원가입이 성공했습니다");
			return "redirect:/";
		}
	}
	
	
	@GetMapping("/login")
	public String login(userInfo member) {
		// @ModelAttribute는 생략가능
		return "login";
	}
	
	@PostMapping("/login")
	public String login(userInfo member, HttpSession session) {
		// @ModelAttribute는 생략가능
		userInfo res = service.login(member);
		
		if (res == null) {
			System.out.println("로그인이 실패했습니다.");
			return "redirect:/login";
		}else {
			System.out.println("로그인이 성공했습니다.");
			session.setAttribute("member", res);
			return "redirect:/index4";
		}
	}
}
