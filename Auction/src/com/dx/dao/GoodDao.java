package com.dx.dao;

import java.util.List;

import com.dx.entity.Good;

public interface GoodDao {
	public List<Good> findGoods();
	public boolean addGood(Good good);
	public boolean updateGoodGstate(String gid);
	public List<Good> findMyGood(String sid);
	public Good findbygid(String gid);
	public List<Good> findbygname(String gname);
	public List<Good> findUserGood(String uid);
}
