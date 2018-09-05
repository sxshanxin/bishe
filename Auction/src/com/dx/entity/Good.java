package com.dx.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Good implements Serializable{
	private Integer gid;
	private String gname;
	private Double gprice;
	private Double gendprice;
	private String gimg;
	private String gdata;
	private String gthing;
	private String gstate;
	public Good() {
		this.gid=0;
		this.gprice=0.0;
		this.gendprice=0.0;
	}

	public Good(String gname, Double gprice, Double gendprice, String gimg,
			String gdata, String gthing, String gstate) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gendprice = gendprice;
		this.gimg = gimg;
		this.gdata = gdata;
		this.gthing = gthing;
		this.gstate = gstate;
	}
	
	public Good(String gname, Double gprice, String gimg, String gdata,
			String gthing, String gstate) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gimg = gimg;
		this.gdata = gdata;
		this.gthing = gthing;
		this.gstate = gstate;
	}

	public Good(Integer gid, String gname, Double gprice, Double gendprice,
			String gimg, String gdata, String gthing, String gstate) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gendprice = gendprice;
		this.gimg = gimg;
		this.gdata = gdata;
		this.gthing = gthing;
		this.gstate = gstate;
	}

	public Double getGendprice() {
		return gendprice;
	}

	public void setGendprice(Double gendprice) {
		this.gendprice = gendprice;
	}

	public String getGdata() {
		return gdata;
	}

	public void setGdata(String gdata) {
		this.gdata = gdata;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Double getGprice() {
		return gprice;
	}
	public void setGprice(Double gprice) {
		this.gprice = gprice;
	}
	public String getGimg() {
		return gimg;
	}
	public void setGimg(String gimg) {
		this.gimg = gimg;
	}
	public String getGthing() {
		return gthing;
	}
	public void setGthing(String gthing) {
		this.gthing = gthing;
	}
	public String getGstate() {
		return gstate;
	}
	public void setGstate(String gstate) {
		this.gstate = gstate;
	}

	@Override
	public String toString() {
		return "Good [gid=" + gid + ", gname=" + gname + ", gprice=" + gprice
				+ ", gendprice=" + gendprice + ", gimg=" + gimg + ", gdata="
				+ gdata + ", gthing=" + gthing + ", gstate=" + gstate + "]";
	}


	
	
}
