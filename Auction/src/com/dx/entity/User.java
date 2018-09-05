package com.dx.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable{
	private Integer uid;
	private String uname;
	private String upsw;
	private String urealname;
	private String utel;
	private Double umoney;
	private String usex;
	private String ubirthday;
	private String ustate;
	public User() {
		this.uid=0;
		this.umoney=0.0;
	}
	
	public User(String uname, String upsw, String urealname, String utel,
			Double umoney, String usex, String ubirthday, String ustate) {
		this();
		this.uname = uname;
		this.upsw = upsw;
		this.urealname = urealname;
		this.utel = utel;
		this.umoney = umoney;
		this.usex = usex;
		this.ubirthday = ubirthday;
		this.ustate = ustate;
	}
	
	public User(Integer uid, String uname, String upsw, String urealname,
			String utel, Double umoney, String usex, String ubirthday,
			String ustate) {
		this();
		this.uid = uid;
		this.uname = uname;
		this.upsw = upsw;
		this.urealname = urealname;
		this.utel = utel;
		this.umoney = umoney;
		this.usex = usex;
		this.ubirthday = ubirthday;
		this.ustate = ustate;
	}

	public String getUstate() {
		return ustate;
	}

	public void setUstate(String ustate) {
		this.ustate = ustate;
	}

	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpsw() {
		return upsw;
	}
	public void setUpsw(String upsw) {
		this.upsw = upsw;
	}
	public String getUtel() {
		return utel;
	}
	public void setUtel(String utel) {
		this.utel = utel;
	}
	public String getUrealname() {
		return urealname;
	}
	public void setUrealname(String urealname) {
		this.urealname = urealname;
	}
	public Double getUmoney() {
		return umoney;
	}
	public void setUmoney(Double umoney) {
		this.umoney = umoney;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getUbirthday() {
		return ubirthday;
	}
	public void setUbirthday(String ubirthday) {
		this.ubirthday = ubirthday;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upsw=" + upsw
				+ ", urealname=" + urealname + ", utel=" + utel + ", umoney="
				+ umoney + ", usex=" + usex + ", ubirthday=" + ubirthday
				+ ", ustate=" + ustate + "]";
	}
}
