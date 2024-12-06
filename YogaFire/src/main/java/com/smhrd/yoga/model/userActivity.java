package com.smhrd.yoga.model;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class userActivity {
	private int activity_idx;
	private String id;
	private int flow_order_idx;
	private Date activity_at;
	private int activity_score;
	private int scoresum;
}

