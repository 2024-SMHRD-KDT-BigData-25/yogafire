package com.smhrd.yoga.mapper;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.smhrd.yoga.model.FlowInfo;
import com.smhrd.yoga.model.myPage;
import com.smhrd.yoga.model.userActivity;
import com.smhrd.yoga.model.userInfo;
import com.smhrd.yoga.model.userhistory;


@Mapper
public interface MemberMapper {
	@Insert("insert into user_info(id, password, nick, join_at) values (#{id}, #{password}, #{nick}, SYSDATE())")
	public int signup(userInfo member);
	
	@Select("select * from user_info where id=#{id} and password=#{password}")
	public userInfo login(userInfo member);
	
	@Update("update user_info set password=#{password}, nick=#{nick}, profic=#{profic} where id=#{id}")
	public int update(userInfo member);
	
	@Delete("delete from user_info where id=#{id}")
	public int delete(String id);
	
	@Select("select activity_at, sum(ps_time) as totalPsTime from mypage1 where id =#{id}  group by activity_at")
	public List<myPage> time(userInfo member);
	
	@Select("select COALESCE(SUM(activity_score), 0) AS scoresum from user_activity where id=#{id}")
	public int scoresum(userInfo member);
	
	@Select("select flow_idx from tmp where id=#{id} limit 1")
	public Integer recentflow(userInfo member);
	
	public Integer todaycal(userInfo member);
	
	public Integer totalcal(userInfo member);

	@Select("select sum(ps_time) from mypage1 where id=#{id};")
	public Integer totaltime(userInfo member);

	public Integer alltodaycal();
	
	@Select("select* from userscore where id=#{id}")
	public List<userhistory> userscore(userInfo member);

    @Select("<script>" +
            "SELECT * FROM flow_info WHERE flow_idx IN " +
            "<foreach item='num' collection='numSet' open='(' separator=',' close=')'>" +
            "#{num}" +
            "</foreach>" +
            "</script>")
    public List<FlowInfo> randomflow(@Param("numSet") Set<Integer> numSet);
    
    // 유저의 운동 기록 조회
    @Select("select distinct activity_at from user_activity where id =#{id} ORDER BY activity_at DESC")
    List<userActivity> ActivityHistory(String id);
    
    @Select("select distinct activity_at from user_activity where id =#{id} ORDER BY activity_at DESC limit 1")
    userActivity skipdays(String id);
}
