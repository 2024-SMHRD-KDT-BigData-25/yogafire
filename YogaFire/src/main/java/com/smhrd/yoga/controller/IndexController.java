package com.smhrd.yoga.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

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
    public String myPagepage() {
        return "myPage";
    }
    @GetMapping(value="/yogaPlay")
    public String yogaplaypage() {
    	return "yogaPlay";
    }
}
