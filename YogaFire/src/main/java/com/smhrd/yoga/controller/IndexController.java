package com.smhrd.yoga.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

    // localhost:8090/boot -> index.jsp 연결
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexPage() {
        return "index";
    }


    // localhost:8090/boot/index5 -> index5.jsp 연결
    @RequestMapping(value = "/index5", method = RequestMethod.GET)
    public String index5Page() {
        return "index5";
    }


    // localhost:8090/boot/index6 -> index6.jsp 연결
    @RequestMapping(value = "/index6", method = RequestMethod.GET)
    public String index6Page() {
        return "index6";
    }
    
    // localhost:8090/boot/index7 -> index7.jsp 연결
    @RequestMapping(value = "/index7", method = RequestMethod.GET)
    public String index7Page() {
        return "index7";
    }
    // localhost:8090/boot/index8 -> index8.jsp 연결
    @RequestMapping(value = "/index8", method = RequestMethod.GET)
    public String index8Page() {
        return "index8";
    }
    
    // localhost:8090/boot/index9 -> index9.jsp 연결
    @RequestMapping(value = "/index9", method = RequestMethod.GET)
    public String index9Page() {
        return "index9";
    }
    
    // localhost:8090/boot/index10 -> index10.jsp 연결
    @RequestMapping(value = "/index10", method = RequestMethod.GET)
    public String index10Page() {
        return "index10";
    }
    
    // localhost:8090/boot/index11 -> index11.jsp 연결
    @RequestMapping(value = "/index11", method = RequestMethod.GET)
    public String index11Page() {
        return "index11";
    }
    
    @RequestMapping(value = "/userHistory", method = RequestMethod.GET)
    public String user_historypage() {
        return "userHistory";
    }
}
