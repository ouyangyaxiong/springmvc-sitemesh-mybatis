package com.tomtop.portal.mapper;

import com.tomtop.portal.pojo.User;

public interface UserMapper extends BaseMapper<User>{

	User getUserByName(String userName);
	
	User getUserByNameAndPwd(User user);
	
}