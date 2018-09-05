package com.dx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dx.dao.impl.GoodDaoImpl;
import com.dx.dao.impl.ManagerDaoImpl;
import com.dx.dao.impl.SalerDaoImpl;
import com.dx.dao.impl.UserDaoImpl;
import com.dx.entity.Good;
import com.dx.entity.Manager;
import com.dx.entity.Saler;
import com.dx.entity.User;
import com.dx.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerDaoImpl managerDaoImpl;
	@Autowired
	private SalerDaoImpl salerDaoImpl;
	@Autowired
	private UserDaoImpl userDaoImpl;
	@Autowired
	private GoodDaoImpl goodDaoImpl;
	@Override
	public Manager findByLoginm(String mname, String mpsw) {
		return managerDaoImpl.findByLoginm(mname, mpsw);
	}
	@Override
	public boolean insertManager(Manager manager) {
		return managerDaoImpl.insertManager(manager);
	}
	@Override
	public List<Good> findGoods() {
		return goodDaoImpl.findGoods();
	}
	@Override
	public List<Saler> findSalers() {
		return salerDaoImpl.findSalers();
	}
	@Override
	public List<User> findUsers() {
		return userDaoImpl.findUsers();
	}
	@Override
	public boolean updateGoodGstate(String gid) {
		return goodDaoImpl.updateGoodGstate(gid);
	}
	@Override
	public boolean updateSalerSstate(String sid) {
		return salerDaoImpl.updateSalerSstate(sid);
	}
	@Override
	public boolean findByMname(String mname) {
		return managerDaoImpl.findByMname(mname);
	}
	@Override
	public List<Manager> findManagers() {
		return managerDaoImpl.findManagers();
	}
	@Override
	public boolean delManager(String sid) {
		return managerDaoImpl.delManager(sid);
	}
	@Override
	public boolean updateUserstateD(String uid) {
		return userDaoImpl.updateUserstateD(uid);
	}
	@Override
	public boolean updateUserstateJ(String uid) {
		return userDaoImpl.updateUserstateJ(uid);
	}
	@Override
	public List<Good> findMyGood2(String sid) {
		return goodDaoImpl.findMyGood(sid);
	}
	@Override
	public boolean updateSalerSstateP(String sid) {
		return salerDaoImpl.updateSalerSstateP(sid);
	}
	@Override
	public Good findbygid2(String gid) {
		return goodDaoImpl.findbygid(gid);
	}

}
