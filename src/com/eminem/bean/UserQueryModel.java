package com.eminem.bean;

import java.sql.Date;

public class UserQueryModel extends User{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2149858031139840406L;
	private Date from;
	private Date to;
	public Date getFrom() {
		return from;
	}
	public void setFrom(Date from) {
		this.from = from;
	}
	public Date getTo() {
		return to;
	}
	public void setTo(Date to) {
		this.to = to;
	}
	
}
