package com.smhrd.yoga.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.model.myPage;
import com.smhrd.yoga.model.userInfo;
import com.smhrd.yoga.service.FlowService;
import com.smhrd.yoga.service.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class IndexController {
	
	private final MemberService service;
	private final FlowService service2;

    // localhost:8090/boot -> index.jsp 연결
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexPage() {
        return "index";
    }


    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String joinPage() {
        return "join";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
    
    @RequestMapping(value = "/membership", method = RequestMethod.GET)
    public String membershipPage() {
        return "membership";
    }
    
    @RequestMapping(value = "/yogaChat", method = RequestMethod.GET)
    public String yogaChatPage() {
        return "yogaChat";
    }
    
    @RequestMapping(value = "/userHistory", method = RequestMethod.GET)
    public String user_historypage() {
        return "userHistory";
    }
    
    @RequestMapping(value = "/myPage", method = RequestMethod.GET)
    public String myPagepage(HttpSession session) {
    	userInfo member = (userInfo)session.getAttribute("member");
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
        return "myPage";
    }
    @GetMapping(value="/yogaPlay")
    public String yogaplaypage() {
    	return "yogaPlay";
    }
}
