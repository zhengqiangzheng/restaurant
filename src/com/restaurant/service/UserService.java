package com.restaurant.service;

import com.restaurant.dao.UserDao;
import com.restaurant.po.User;
import com.restaurant.po.vo.ResultInfo;
import com.restaurant.util.StringUtil;


public class UserService {
	UserDao userDao = new UserDao();

	public ResultInfo<User> login(String uname, String upwd) {
		ResultInfo<User> resultInfo = new ResultInfo<>();
		if(StringUtil.isEmpty(uname) || StringUtil.isEmpty(upwd)){
			resultInfo.setCode(0);
			resultInfo.setMsg("用户名或者密码不能为空！");
			return resultInfo;
		}
		User user = userDao.findUserByUnameAndUpwd(uname,upwd);
		if(user == null){
			resultInfo.setCode(0);
			resultInfo.setMsg("用户名或者密码不正确！");
			return resultInfo;
		}
		resultInfo.setCode(1);
		resultInfo.setResult(user);
		return resultInfo;
	}

	public ResultInfo<User> register(String uname, String upwd, String email) {
		ResultInfo<User> resultInfo = new ResultInfo<>();
		User user = userDao.findUserByUnameAndUpwd(uname,null);
		if(user != null){
			resultInfo.setMsg("用户名已经存在！！！");
			return resultInfo;
		}
		int row = userDao.upDateByUnameAndUpwd(uname,upwd,email);
		if(row < 1){
			resultInfo.setMsg("注册失败！");
			return resultInfo;
		}
		resultInfo.setMsg("恭喜注册成功！！！");
		return resultInfo;
	}
	
}
