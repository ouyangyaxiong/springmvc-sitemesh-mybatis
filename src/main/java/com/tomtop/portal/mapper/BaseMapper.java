package com.tomtop.portal.mapper;

import com.tomtop.portal.pojo.User;

public interface BaseMapper<T> {
	
	int deleteByPrimaryKey(Integer id);

    int insert(T record);

    int insertSelective(T record);

    User selectByPrimaryKey(Integer id);

    /**
     * 更新对象的每个属性，忽略null值属性
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(T record);

    /**
     * 强制更新对象的每个属性，不忽略null值属性
     * @param record
     * @return
     */
    int updateByPrimaryKey(T record);

}
