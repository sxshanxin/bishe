package com.dx.service;

import java.util.List;
import com.dx.entity.Good;
import com.dx.entity.Manager;
import com.dx.entity.Saler;
import com.dx.entity.User;

public interface ManagerService {
	public Manager findByLoginm(String mname, String mpsw);
	public boolean insertManager(Manager manager);
	public List<Good> findGoods();
	public List<Saler> findSalers();
	public List<User> findUsers();
	public boolean updateGoodGstate(String gid);
	public boolean updateSalerSstate(String sid);
	public boolean updateSalerSstateP(String sid);
	public boolean findByMname(String mname);
	public List<Manager> findManagers();
	public boolean delManager(String sid);
	public boolean updateUserstateD(String uid);
	public boolean updateUserstateJ(String uid);
	public List<Good> findMyGood2(String sid);
	public Good findbygid2(String gid);
	
}
