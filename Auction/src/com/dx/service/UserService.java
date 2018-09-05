package com.dx.service;

import java.util.List;

import com.dx.entity.Good;
import com.dx.entity.User;

public interface UserService {
	public User findByLoginu(String uname,String upsw);
	public boolean updateUser(User user);
	public boolean updateUserpsw(User user);
	public List<Good> findUserGood(String uid);
	public Good findbygid(String gid);
}
