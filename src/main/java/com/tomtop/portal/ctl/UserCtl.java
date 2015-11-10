package com.tomtop.portal.ctl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tomtop.portal.biz.IUserBiz;
import com.tomtop.portal.pojo.User;

@Controller
@RequestMapping("/user")
public class UserCtl {

	@Resource
	private IUserBiz userBiz;

	@RequestMapping("/get")
	public String get(@RequestParam(required = false) int uid, Model model) {
		User u = userBiz.getUserById(uid);
		if (u != null) {
			model.addAttribute("user", u);
		}
		return "user/detail";
	}

}
