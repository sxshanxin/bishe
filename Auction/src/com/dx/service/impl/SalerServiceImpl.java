package com.dx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dx.dao.impl.GoodDaoImpl;
import com.dx.dao.impl.SalerDaoImpl;
import com.dx.dao.impl.SalerandGoodDaoImpl;
import com.dx.entity.Good;
import com.dx.entity.Saler;
import com.dx.service.SalerService;

@Service
public class SalerServiceImpl implements SalerService{
	@Autowired
	private SalerDaoImpl salerDaoImpl;
	@Autowired
	private GoodDaoImpl goodDaoImpl;
	@Autowired
	private SalerandGoodDaoImpl salerandGoodDaoImpl;
	@Override
	public Saler findByLogins(String sname, String spsw) {
		return salerDaoImpl.findByLogins(sname, spsw);
	}
	@Override
	public List<Good> findMyGood(String sid) {
		return goodDaoImpl.findMyGood(sid);
	}
	@Override
	public boolean updateGoodGstate(String gid) {
		return goodDaoImpl.updateGoodGstate(gid);
	}
	@Override
	public Good findbygid(String gid) {
		return goodDaoImpl.findbygid(gid);
	}
	@Override
	public boolean addGood(Good good) {
		return goodDaoImpl.addGood(good);
	}
	@Override
	public List<Good> findbygname(String gname) {
		return goodDaoImpl.findbygname(gname);
	}
	@Override
	public boolean saleraddgood(String sid, String gid) {
		return salerandGoodDaoImpl.saleraddgood(sid, gid);
	}
	@Override
	public boolean delgoods(String gid) {
		return salerandGoodDaoImpl.delgoods(gid);
	}
	
}
