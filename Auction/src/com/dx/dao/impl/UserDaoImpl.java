package com.dx.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dx.dao.UserDao;
import com.dx.entity.User;
@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	@Override
	public User findByLoginu(String uname, String upsw) {
		SqlSession session = sqlSessionFactory.openSession();
		Object[] objects={uname,upsw};
		User user = session.selectOne("findUserByuName",objects);
		return user;
	}
	@Override
	public List<User> findUsers() {
		SqlSession session = sqlSessionFactory.openSession();
		List<User> users = new ArrayList<User>();
		users = session.selectList("findUsers");
		return users;
	}
	@Override
	public User findUserByUid(int uid) {
		SqlSession session = sqlSessionFactory.openSession();
		User user = session.selectOne("findUserByUid", uid);
		return user;
	}
	@Override
	public boolean updateUser(User user) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateUser", user);
		return true;
	}
	@Override
	public boolean updateUserpsw(User user) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("updateUserpsw", user);
		return true;
	}
	@Override
	public boolean updateUserstateD(String uid) {
		SqlSession session = sqlSessionFactory.openSession();
		System.out.println(uid);
		session.update("updateUserstateD", uid);
		return true;
	}
	@Override
	public boolean updateUserstateJ(String uid) {
		SqlSession session = sqlSessionFactory.openSession();
		System.out.println(uid);
		session.update("updateUserstateJ", uid);
		return true;
	}

}
