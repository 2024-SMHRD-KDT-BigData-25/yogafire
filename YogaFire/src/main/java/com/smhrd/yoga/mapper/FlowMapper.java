package com.smhrd.yoga.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.yoga.model.FlowInfo;


@Mapper
public interface FlowMapper {

	@Select("select * from flow_info where flow_lv='초급'")
	public List<FlowInfo> list1();
	
	@Select("select * from flow_info where flow_lv='중급'")
	public List<FlowInfo> list2();
	
	@Select("select * from flow_info where flow_lv='고급'")
	public List<FlowInfo> list3();
	
	@Select("select * from flow_info where flow_idx=#{recentflowidx}")
	public FlowInfo flowlist(int recentflowidx);
}
