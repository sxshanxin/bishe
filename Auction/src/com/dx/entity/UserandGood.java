package com.dx.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserandGood implements Serializable {
	/*
	 * 用户，拍卖物品
	 */
	private Integer ugid;
	private User user;
	private Good good;
	public UserandGood(Integer ugid, User user, Good good) {
		this();
		this.ugid = ugid;
		this.user = user;
		this.good = good;
	}
	public UserandGood(User user, Good good) {
		this();
		this.user = user;
		this.good = good;
	}
	public UserandGood() {
		this.ugid=0;
	}
	public Integer getUgid() {
		return ugid;
	}
	public void setUgid(Integer ugid) {
		this.ugid = ugid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	@Override
	public String toString() {
		return "UserandGood [ugid=" + ugid + ", user=" + user + ", good="
				+ good + "]";
	}
	
}
