package com.tomtop.portal.biz;

import com.tomtop.portal.pojo.User;

public interface IUserBiz {

	public User getUserById(int userId);

	public User getUserByName(String userName);
	
}
