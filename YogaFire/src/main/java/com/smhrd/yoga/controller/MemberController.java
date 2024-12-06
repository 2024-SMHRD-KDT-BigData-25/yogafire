package com.smhrd.yoga.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.yoga.model.userActivity;
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
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("member");
		return "redirect:/";
	}
	
	@GetMapping("/member/{id}/delete")
	public String delete(@PathVariable String id,
					HttpSession session) {
		
		int res = service.delete(id);
		
		if(res > 0) {
			session.removeAttribute("member");
		}
		
		return "redirect:/";
	}
	@GetMapping("/member/{id}/edit")
	public String updateForm() {
		return "edit";
	}
	@PostMapping("member/{id}/edit")
	public String update(userInfo member, HttpSession session, @RequestParam("proficfile") MultipartFile profic) throws IllegalStateException, IOException {
	    // 프로필 파일을 처리하여 파일 이름을 Member 객체에 설정
	    if (profic != null && !profic.isEmpty()) {
	        String randomUUID = UUID.randomUUID().toString();
	        int lastIndex = randomUUID.lastIndexOf("-");
	        String lastPart = randomUUID.substring(lastIndex + 1);
	        String fileName = lastPart + profic.getOriginalFilename();
	        System.out.println(fileName);
	        // 파일 저장 경로 지정
	        String filePath = "C://upload/" + fileName;
	        profic.transferTo(new File(filePath));

	        // Member 객체에 파일 이름 설정
	        member.setProfic(fileName);
	    } else {
	        member.setProfic("default.png");
	    }

	    int res = service.update(member);
	    if (res == 0) {
	        System.out.println("수정하는데 실패하였습니다.");
	        return "redirect:/member/" + member.getId() + "/edit";
	    } else {
	        System.out.println("수정하는데 성공하였습니다.");
	        session.setAttribute("member", member);
	        return "redirect:/member/" + member.getId() + "/edit";
	    }
	}
}
