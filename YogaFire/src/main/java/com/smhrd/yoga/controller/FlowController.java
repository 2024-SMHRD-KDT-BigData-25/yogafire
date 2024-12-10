package com.smhrd.yoga.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.service.FlowService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class FlowController {
	
	private final FlowService service;

	@GetMapping("/programs")
    public String getList(Model model) {
		
		//게시물 데이터
		List<FlowInfo> list1 = service.list1();
		List<FlowInfo> list2 = service.list2();
		List<FlowInfo> list3 = service.list3();
		model.addAttribute("flowList1", list1);
		model.addAttribute("flowList2", list2);
		model.addAttribute("flowList3", list3);
		
		
        return "programList";
    }
}
