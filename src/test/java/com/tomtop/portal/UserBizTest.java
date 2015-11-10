package com.tomtop.portal;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.tomtop.portal.biz.IUserBiz;
import com.tomtop.portal.pojo.User;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
public class UserBizTest {  
    private static Logger logger = Logger.getLogger(UserBizTest.class);  
//  private ApplicationContext ac = null;  
    @Resource  
    private IUserBiz userBiz = null;
  
//  @Before  
//  public void before() {  
//      ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//      userService = (IUserService) ac.getBean("userService");  
//  }  
  
    @Test  
    public void test1() {  
        User user = userBiz.getUserById(1);  
        // System.out.println(user.getUserName());  
        // logger.info("用户名："+user.getUserName());  
        logger.info(JSON.toJSONString(user));  
    }  
}  
