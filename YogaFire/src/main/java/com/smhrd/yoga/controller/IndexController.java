package com.smhrd.yoga.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	// localhost:8090/boot
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String indexPage() {
		// View-Resolver
		// prefix : /WEB-INF/views/
		// suffic : .jsp
		return "index";
	}
}
