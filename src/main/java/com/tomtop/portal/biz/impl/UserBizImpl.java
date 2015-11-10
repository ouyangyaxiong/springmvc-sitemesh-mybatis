package com.tomtop.portal.biz.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tomtop.portal.biz.IUserBiz;
import com.tomtop.portal.mapper.UserMapper;
import com.tomtop.portal.pojo.User;

@Service("userBiz")
public class UserBizImpl implements IUserBiz {

	@Resource
	private UserMapper userMapper;

	public User getUserById(int userId) {
		return this.userMapper.selectByPrimaryKey(userId);
	}

	public User getUserByName(String userName) {
		return this.userMapper.getUserByName(userName);
	}

}
