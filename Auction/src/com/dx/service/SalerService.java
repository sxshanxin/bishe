package com.dx.service;

import java.util.List;

import com.dx.entity.Good;
import com.dx.entity.Saler;

public interface SalerService {
	public Saler findByLogins(String sname, String spsw);
	public List<Good> findMyGood(String sid);
	public boolean updateGoodGstate(String gid);
	public Good findbygid(String gid);
	public boolean addGood(Good good);
	public List<Good> findbygname(String gname);
	public boolean saleraddgood(String sid,String gid);
	public boolean delgoods(String gid);
}
