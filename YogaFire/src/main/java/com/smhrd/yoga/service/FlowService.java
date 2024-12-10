package com.smhrd.yoga.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smhrd.yoga.mapper.FlowMapper;
import com.smhrd.yoga.model.FlowInfo;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class FlowService {

	private final FlowMapper mapper;
	
	public List<FlowInfo> list1() {
		return mapper.list1();
	}
	
	public List<FlowInfo> list2() {
		return mapper.list2();
	}
	
	public List<FlowInfo> list3() {
		return mapper.list3();
	}
	
}
