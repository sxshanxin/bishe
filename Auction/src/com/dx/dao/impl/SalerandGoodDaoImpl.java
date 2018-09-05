package com.dx.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dx.dao.SalerandGoodDao;

@Repository
public class SalerandGoodDaoImpl implements SalerandGoodDao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	public boolean saleraddgood(String sid, String gid) {
		SqlSession session = sqlSessionFactory.openSession();
		String[] strs = {sid,gid};
		session.insert("addgoods2", strs);
		return true;
	}
	@Override
	public boolean delgoods(String gid) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("delgoods", gid);
		return true;
	}

}
