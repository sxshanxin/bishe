package com.dx.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Manager implements Serializable{
	private Integer mid;
	private String mname;
	private String mpsw;
	private String mrealname;
	private String mtel;
	private String mmail;
	public Manager() {
		this.mid=0;
	}
	public Manager(String mname, String mpsw, String mrealname, String mtel,
			String mmail) {
		this();
		this.mname = mname;
		this.mpsw = mpsw;
		this.mrealname = mrealname;
		this.mtel = mtel;
		this.mmail = mmail;
	}
	public Manager(Integer mid, String mname, String mpsw, String mrealname,
			String mtel, String mmail) {
		this();
		this.mid = mid;
		this.mname = mname;
		this.mpsw = mpsw;
		this.mrealname = mrealname;
		this.mtel = mtel;
		this.mmail = mmail;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpsw() {
		return mpsw;
	}
	public void setMpsw(String mpsw) {
		this.mpsw = mpsw;
	}
	public String getMrealname() {
		return mrealname;
	}
	public void setMrealname(String mrealname) {
		this.mrealname = mrealname;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMmail() {
		return mmail;
	}
	public void setMmail(String mmail) {
		this.mmail = mmail;
	}
	@Override
	public String toString() {
		return "Manager [mid=" + mid + ", mname=" + mname + ", mpsw=" + mpsw
				+ ", mrealname=" + mrealname + ", mtel=" + mtel + ", mmail="
				+ mmail + "]";
	}
	
}
