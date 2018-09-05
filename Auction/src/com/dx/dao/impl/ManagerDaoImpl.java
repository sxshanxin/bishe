package com.dx.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dx.dao.ManagerDao;
import com.dx.entity.Manager;

@Repository
public class ManagerDaoImpl implements ManagerDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	@Override
	public Manager findByLoginm(String mname, String mpsw) {
		SqlSession session = sqlSessionFactory.openSession();
		Object[] objects={mname,mpsw};
		Manager manager = session.selectOne("findBymName",objects);
		return manager;
	}
	@Override
	public boolean insertManager(Manager manager) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("insertManager", manager);
		return true;
	}
	@Override
	public boolean findByMname(String mname) {
		SqlSession session = sqlSessionFactory.openSession();
		Manager manager = session.selectOne("findByMname", mname);
		if(manager!=null){
			return true;
		}
		return false;
	}
	@Override
	public List<Manager> findManagers() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Manager> list = new ArrayList<Manager>();
		list = session.selectList("findManagers");
		return list;
	}
	@Override
	public boolean delManager(String sid) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("delMnager", sid);
		return true;
	}

}
