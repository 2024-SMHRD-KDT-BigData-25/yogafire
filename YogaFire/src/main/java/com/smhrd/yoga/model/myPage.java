package com.smhrd.yoga.model;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class myPage {
	private int activity_idx;
	private String id;
	private Date activity_at;
	private String ps_name;
	private int ps_time;
	private int totalPsTime;

}
