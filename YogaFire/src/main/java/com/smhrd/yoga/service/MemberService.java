package com.smhrd.yoga.service;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.time.LocalDate;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.yoga.mapper.MemberMapper;
import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.model.myPage;
import com.smhrd.yoga.model.userActivity;
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
	
    // 유저의 운동 기록을 조회
    public List<userActivity> ActivityHistory(String id) {
        return mapper.ActivityHistory(id);
    }
    public userActivity checkSkipDays(String id) {
    	return mapper.skipdays(id);
    }

    // 연속 운동일 수를 확인
    public int checkActivity(String id) {
        List<userActivity> activities = ActivityHistory(id);
        if (activities.isEmpty()) {return 0;}
        LocalDate today = LocalDate.now();
        int checkday = 0;
        for (userActivity activity : activities) {
            // Null 체크 후 변환
            if (activity.getActivity_at() != null) {
            	LocalDate activityDate = activity.getActivity_at().toLocalDate();

            	if (today.equals(activityDate)) {
            		today = today.minusDays(1);  // 어제 날짜로 업데이트
                    checkday++;
                    
                }
            } 
        }
        return checkday;
    }

    // 어제 운동 기록이 있는지 확인
    public int Skipdays(String id) {
        userActivity activities = checkSkipDays(id);
        if (activities == null) {return 0;}
        LocalDate today = LocalDate.now();
        int skipday = 0;
        while (true) {
            // Null 체크 후 변환
            if (activities.getActivity_at() != null) {
            	LocalDate activityDate = activities.getActivity_at().toLocalDate();
            	if (!today.equals(activityDate)) {
            		today = today.minusDays(1);
            		System.out.println("최근 운동 날짜 : "+activityDate);
            		System.out.println("오늘 날짜 ㅣ" + today);
            		skipday++;
                }else {
                	break;
                }
            } 
        }
        return skipday;
    }
    
	public List<userhistory> calendar(userInfo member) {
		return mapper.calendar(member);
	}
	
}
