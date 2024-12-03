package com.smhrd.yoga.model;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class userInfo {

	private String id;
	private String password;
	private String nick;
	private String profic;
	private Date join_at;
	
	
	public userInfo(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

}
