package com.smhrd.yoga.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.model.myPage;
import com.smhrd.yoga.model.userActivity;
import com.smhrd.yoga.model.userInfo;
import com.smhrd.yoga.service.FlowService;
import com.smhrd.yoga.service.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MemberController {
	
	private final MemberService service;
	private final FlowService service2;
	
	
	@PostMapping("/member")
	public String signup(userInfo member) {
		
		int res = service.signup(member);
		
		if(res ==  0) { 
			System.out.println("회원가입이 실패했습니다");
			return "redirect:/join";
		}else {
			System.out.println("회원가입이 성공했습니다");
			return "redirect:/";
		}
	}
	
	
	
	@PostMapping("/login")
	public String login(userInfo member, HttpSession session) {
		// @ModelAttribute는 생략가능
		userInfo res = service.login(member);
		if (res == null) {
			return "redirect:/login";
		}else {
			session.setAttribute("member", res);
			List<myPage> time = service.time(member);
			int scroesum = service.scoresum(member);
			Integer recentflowidx = service.recentflow(member);
			if (recentflowidx == null) {
			    recentflowidx = 0;
			}
			FlowInfo flowlist = service2.flowlist(recentflowidx);
			Integer todaycal = service.todaycal(member);
			Integer totalcal = service.totalcal(member);
			Integer totaltime = service.totaltime(member);
			
			session.setAttribute("time", time);
			session.setAttribute("scoresum", Integer.valueOf(scroesum));
			session.setAttribute("flowlist", flowlist);
			session.setAttribute("todaycal", todaycal);
			session.setAttribute("totalcal", totalcal);
			session.setAttribute("totaltime", totaltime);
			return "redirect:/myPage";
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
		return "userEdit";
	}
	@PostMapping("member/{id}/edit")
	public String update(userInfo member, HttpSession session, @RequestParam("proficfile") MultipartFile profic) throws IllegalStateException, IOException {
	    // 프로필 파일을 처리하여 파일 이름을 Member 객체에 설정
	    if (profic != null && !profic.isEmpty()) {
	        String fileName = profic.getOriginalFilename();
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
	        return "redirect:/userEdit";
	    } else {
	        System.out.println("수정하는데 성공하였습니다.");
	        session.setAttribute("member", member);
	        return "redirect:/userEdit";
	    }
	}
}
