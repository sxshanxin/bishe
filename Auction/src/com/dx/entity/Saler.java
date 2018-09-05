package com.dx.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Saler implements Serializable{
	private Integer sid;
	private String sname;
	private String spsw;
	private String srealname;
	private String scode;
	private String stel;
	private String smail;
	private String sstate;
	public Saler() {
		this.sid=0;
	}
	
	public Saler(String sname, String spsw, String srealname, String scode,
			String stel, String smail, String sstate) {
		this();
		this.sname = sname;
		this.spsw = spsw;
		this.srealname = srealname;
		this.scode = scode;
		this.stel = stel;
		this.smail = smail;
		this.sstate = sstate;
	}

	public Saler(Integer sid, String sname, String spsw, String srealname,
			String scode, String stel, String smail, String sstate) {
		this();
		this.sid = sid;
		this.sname = sname;
		this.spsw = spsw;
		this.srealname = srealname;
		this.scode = scode;
		this.stel = stel;
		this.smail = smail;
		this.sstate = sstate;
	}

	public String getScode() {
		return scode;
	}

	public void setScode(String scode) {
		this.scode = scode;
	}

	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSpsw() {
		return spsw;
	}
	public void setSpsw(String spsw) {
		this.spsw = spsw;
	}
	public String getSrealname() {
		return srealname;
	}
	public void setSrealname(String srealname) {
		this.srealname = srealname;
	}
	public String getStel() {
		return stel;
	}
	public void setStel(String stel) {
		this.stel = stel;
	}
	public String getSmail() {
		return smail;
	}
	public void setSmail(String smail) {
		this.smail = smail;
	}
	public String getSstate() {
		return sstate;
	}
	public void setSstate(String sstate) {
		this.sstate = sstate;
	}

	@Override
	public String toString() {
		return "Saler [sid=" + sid + ", sname=" + sname + ", spsw=" + spsw
				+ ", srealname=" + srealname + ", scode=" + scode + ", stel="
				+ stel + ", smail=" + smail + ", sstate=" + sstate + "]";
	}
	
	
}
