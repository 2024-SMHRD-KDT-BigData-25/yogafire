package com.smhrd.yoga.service;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.yoga.mapper.MemberMapper;
import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.model.myPage;
import com.smhrd.yoga.model.userInfo;
import com.smhrd.yoga.model.userhistory;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MemberService {
	
	private final MemberMapper mapper;
	
	public int signup(userInfo member) {
		return mapper.signup(member);
	}
	
	public userInfo login(userInfo member) {
		return mapper.login(member);
	}
	
	public int delete(String id) {
		return mapper.delete(id);
	}
	public int update(userInfo member) {
	    System.out.println("서비스 성공");
	    return mapper.update(member);
	}
	
	public List<myPage> time(userInfo member) {
		  return mapper.time(member);
	}
	public int scoresum(userInfo member) {
		  return mapper.scoresum(member);
	}
	
	public Integer recentflow(userInfo member) {
		return mapper.recentflow(member);
	}
	
	public Integer todaycal(userInfo member) {
		return mapper.todaycal(member);
	}
	
	public Integer totalcal(userInfo member) {
		return mapper.totalcal(member);
	}
	
	public Integer totaltime(userInfo member) {
		return mapper.totaltime(member);
	}
	
	public Integer alltodaycal() {
		return mapper.alltodaycal();
	}
	
	public List<userhistory> userscore(userInfo member) {
		return mapper.userscore(member);
	}
	
	public List<FlowInfo> randomflow(Set<Integer> numSet) {
		return mapper.randomflow(numSet);
	}

}
