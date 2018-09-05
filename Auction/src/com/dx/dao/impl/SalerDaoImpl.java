package com.dx.dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dx.dao.SalerDao;
import com.dx.entity.Saler;

@Repository
public class SalerDaoImpl implements SalerDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	@Override
	public Saler findByLogins(String sname, String spsw) {
		SqlSession session = sqlSessionFactory.openSession();
		Object[] objects={sname,spsw};
		Saler saler = session.selectOne("findBysName",objects);
		return saler;
	}
	@Override
	public List<Saler> findSalers() {
		List<Saler> salers = new ArrayList<Saler>();
		SqlSession session = sqlSessionFactory.openSession();
		salers = session.selectList("findSalers");
		return salers;
	}
	@Override
	public Saler findSalerBysid(int sid) {
		SqlSession session = sqlSessionFactory.openSession();
		Saler saler = session.selectOne("findSalerBySid", sid);
		return saler;
	}
	@Override
	public Boolean updateSaler(Saler saler) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateSaler", saler);
		return true;
	}
	@Override
	public boolean updateSalerPsw(Saler saler) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateSalerpsw", saler);
		return true;
	}
	@Override
	public boolean updateSalerSstate(String sid) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateSalerState", sid);
		return true;
	}
	@Override
	public boolean updateSalerSstateP(String sid) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateSalerStateP", sid);
		return true;
	}

}
