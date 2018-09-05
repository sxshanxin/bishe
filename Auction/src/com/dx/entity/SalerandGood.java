package com.dx.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SalerandGood implements Serializable{
	/*
	 * 商家，拍卖物品
	 */
	private Integer sgid;
	private Saler saler;
	private Good good;
	public SalerandGood() {
		this.sgid=0;
	}
	public SalerandGood(Saler saler, Good good) {
		this();
		this.saler = saler;
		this.good = good;
	}
	public SalerandGood(Integer sgid, Saler saler, Good good) {
		this();
		this.sgid = sgid;
		this.saler = saler;
		this.good = good;
	}
	public Integer getSgid() {
		return sgid;
	}
	public void setSgid(Integer sgid) {
		this.sgid = sgid;
	}
	public Saler getSaler() {
		return saler;
	}
	public void setSaler(Saler saler) {
		this.saler = saler;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	@Override
	public String toString() {
		return "SalerandGood [sgid=" + sgid + ", saler=" + saler + ", good="
				+ good + "]";
	}
	
}
