package com.dx.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dx.dao.GoodDao;
import com.dx.entity.Good;

@Repository
public class GoodDaoImpl implements GoodDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	@Override
	public List<Good> findGoods() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Good> goods = new ArrayList<Good>();
		goods = session.selectList("findGoods");
		return goods;
	}

	@Override
	public boolean addGood(Good good) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("insertGood", good);
		session.close();
		return true;
	}

	@Override
	public boolean updateGoodGstate(String gid) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateGoodGstate", gid);
		return true;
	}

	@Override
	public List<Good> findMyGood(String sid) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Good> goods = new ArrayList<Good>();
		goods = session.selectList("findMyGoods",sid);
		return goods;
	}

	@Override
	public Good findbygid(String gid) {
		SqlSession session = sqlSessionFactory.openSession();
		Good good = session.selectOne("findgoodbygid", gid);
		return good;
	}

	@Override
	public List<Good> findbygname(String gname) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Good> goods  = session.selectList("findgoodbygname", gname);
		return goods;
	}

	@Override
	public List<Good> findUserGood(String uid) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Good> goodss = new ArrayList<Good>();
		goodss = session.selectList("findUserGoods",uid);
		return goodss;
	}

}
