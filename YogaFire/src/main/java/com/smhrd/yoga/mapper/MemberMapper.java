package com.smhrd.yoga.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.yoga.model.userInfo;


@Mapper
public interface MemberMapper {
	@Insert("insert into userInfo(id, password, nick, join_at) values (#{id}, #{password}, #{nick}, SYSDATE())")
	public int signup(userInfo member);
	
	@Select("select * from userInfo where id=#{id} and password=#{password}")
	public userInfo login(userInfo member);
	

}
