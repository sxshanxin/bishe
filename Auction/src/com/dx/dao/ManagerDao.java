package com.dx.dao;

import java.util.List;

import com.dx.entity.Manager;

public interface ManagerDao {
	public Manager findByLoginm(String mname,String mpsw);
	public boolean insertManager(Manager manager);
	public boolean findByMname(String mname);
	public List<Manager> findManagers();
	public boolean delManager(String sid);
}
