package com.dx.dao;

import java.util.List;

import com.dx.entity.Saler;

public interface SalerDao {
	public Saler findByLogins(String sname,String spsw);
	public List<Saler> findSalers();
	public Saler findSalerBysid(int sid);
	public Boolean updateSaler(Saler saler);
	public boolean updateSalerPsw(Saler saler);
	public boolean updateSalerSstate(String sid);
	public boolean updateSalerSstateP(String sid);
}
