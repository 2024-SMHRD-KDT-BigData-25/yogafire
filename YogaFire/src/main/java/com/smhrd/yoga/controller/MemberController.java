package com.smhrd.yoga.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.model.myPage;
import com.smhrd.yoga.model.userActivity;
import com.smhrd.yoga.model.userInfo;
import com.smhrd.yoga.model.userhistory;
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
			Integer alltodaycal = service.alltodaycal();
			if (todaycal == null) {
				todaycal = 0;
			}
			if (alltodaycal == null) {
				alltodaycal = 0;
			}
			session.setAttribute("time", time);
			session.setAttribute("scoresum", Integer.valueOf(scroesum));
			session.setAttribute("flowlist", flowlist);
			session.setAttribute("todaycal", todaycal);
			session.setAttribute("totalcal", totalcal);
			session.setAttribute("totaltime", totaltime);
			session.setAttribute("alltodaycal", alltodaycal);
			
			Random r = new Random(); 
			Set<Integer> numSet = new HashSet<>();
	        while (numSet.size() < 6) {
	            int num = r.nextInt(1, 22); // 1부터 20까지 랜덤 숫자
	            numSet.add(num);
	        }
	        List<FlowInfo> randomFlows = service.randomflow(numSet);
			session.setAttribute("randomflow", randomFlows);
			
			String id = member.getId();
			String nick = member.getNick();
	        int checkday = service.checkActivity(id);
	        int skipday = service.Skipdays(id);
	        String message = "";
	        
	        if (checkday != 0) {
	        	message = nick + "님 " + checkday + "일간 연속 운동을 하셨어요!";
	        } else if (skipday != 0) {
	        	message = nick + "님 " + skipday + "일간 운동을 빠지셨어요! 요가파이어는 " + nick + "님을 항상 기다리고 있답니다";
	        } else {
	        	message = nick + "님 요가파이어에 오신것을 환영합니다!";
	        }
	        session.setAttribute("message", message);
	    	}
			
			return "redirect:/myPage";
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
	        return "userEdit";
	    } else {
	        System.out.println("수정하는데 성공하였습니다.");
	        session.setAttribute("member", member);
	        return "userEdit";
	    }
	}
	
	@GetMapping("{id}/history")
	public String userscore(userInfo member, Model model) {
		List<userhistory> userscore = service.userscore(member);
		model.addAttribute("userscore", userscore);
		return "userHistory";
	}
	
    @GetMapping("/calendarList")
    @ResponseBody
    public List<userhistory> calendar(HttpSession session) throws Exception{
    	userInfo member = (userInfo)session.getAttribute("member");
    	List<userhistory> vo = service.calendar(member);
        return vo;
    }
}
