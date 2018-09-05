package com.dx.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dx.dao.impl.GoodDaoImpl;
import com.dx.dao.impl.UserDaoImpl;
import com.dx.entity.Good;
import com.dx.entity.User;
import com.dx.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDaoImpl userDaoImpl;
	@Autowired
	private GoodDaoImpl goodDaoImpl;
	@Override
	public User findByLoginu(String uname, String upsw) {
		return userDaoImpl.findByLoginu(uname, upsw);
	}

	@Override
	public boolean updateUser(User user) {
		return userDaoImpl.updateUser(user);
	}

	@Override
	public boolean updateUserpsw(User user) {
		return userDaoImpl.updateUserpsw(user);
	}

	@Override
	public List<Good> findUserGood(String uid) {
		return goodDaoImpl.findUserGood(uid);
	}

	@Override
	public Good findbygid(String gid) {
		return goodDaoImpl.findbygid(gid);
	}
	
}
