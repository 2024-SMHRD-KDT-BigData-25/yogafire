package com.smhrd.yoga.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.smhrd.yoga.model.userInfo;


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

}
