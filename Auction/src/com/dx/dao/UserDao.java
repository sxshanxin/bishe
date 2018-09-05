package com.dx.dao;

import java.util.List;

import com.dx.entity.User;

public interface UserDao {
	public User findByLoginu(String uname,String upse);
	public List<User> findUsers();
	public User findUserByUid(int uid);
	public boolean updateUser(User user);
	public boolean updateUserpsw(User user);
	public boolean updateUserstateD(String uid);
	public boolean updateUserstateJ(String uid);
}
