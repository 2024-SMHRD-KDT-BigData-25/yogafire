package com.smhrd.yoga.model;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class userhistory {
	private String id;
	private String flow_title;
	private String flow_img;
	private Date activity_at;
	private int avg_activity_score;
}
