package com.restaurant.dao;

import java.util.ArrayList;
import java.util.List;

import com.restaurant.po.User;

public class UserDao {
	BaseDao baseDao = new BaseDao();
	

	public User findUserByUnameAndUpwd(String uname, String upwd) {
		String sql = "select userName,userPwd from user where userName = ?";
		List<Object> params = new ArrayList<>();
		params.add(uname);
		if(upwd != null){
			sql += " and userPwd = ?";
			params.add(upwd);
		}
		User user = (User) baseDao.queryRow(sql, params, User.class);
		return user;
	}


	public int upDateByUnameAndUpwd(String uname, String upwd, String email) {
		String sql = "insert into user(userName,userPwd,userEmail) values(?,?,?)";
		List<Object> params = new ArrayList<>();
		params.add(uname);
		params.add(upwd);
		params.add(email);
		int row = baseDao.excuteUpdate(sql, params);
		return row;
	}

	
}
