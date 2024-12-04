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

    // localhost:8090/boot/index2 -> index2.jsp 연결
    @RequestMapping(value = "/index2", method = RequestMethod.GET)
    public String index2Page() {
        return "index2";
    }

    // localhost:8090/boot/index3 -> index3.jsp 연결
    @RequestMapping(value = "/index3", method = RequestMethod.GET)
    public String index3Page() {
        return "index3";
    }

    // localhost:8090/boot/index4 -> index4.jsp 연결
    @RequestMapping(value = "/index4", method = RequestMethod.GET)
    public String index4Page() {
        return "index4";
    }

    // localhost:8090/boot/index5 -> index5.jsp 연결
    @RequestMapping(value = "/index5", method = RequestMethod.GET)
    public String index5Page() {
        return "index5";
    }


    // localhost:8090/boot/index5 -> index5.jsp 연결
    @RequestMapping(value = "/index6", method = RequestMethod.GET)
    public String index6Page() {
        return "index6";
    }
    
    // localhost:8090/boot/index5 -> index5.jsp 연결
    @RequestMapping(value = "/index7", method = RequestMethod.GET)
    public String index7Page() {
        return "index7";
    }
    // localhost:8090/boot/index5 -> index5.jsp 연결
    @RequestMapping(value = "/index8", method = RequestMethod.GET)
    public String index8Page() {
        return "index8";
    }

}
