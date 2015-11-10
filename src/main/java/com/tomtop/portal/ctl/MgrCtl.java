package com.tomtop.portal.ctl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tomtop.portal.biz.IUserBiz;
import com.tomtop.portal.pojo.User;

@Controller
@RequestMapping("/mgr")
public class MgrCtl {
	@Resource
	private IUserBiz userBiz;

	@RequestMapping(method = RequestMethod.GET, value = "/index")
	public String mgrIdx(HttpServletRequest req, Model model) {
		Integer userId=(Integer)req.getSession().getAttribute("userId");
		System.out.println("--------session- userId ---"+userId);
		if(null !=userId && userId != 0){
			User u=userBiz.getUserById(userId);
			model.addAttribute("user", u);
			System.out.println("登录了--------------");
			return "mgr/index";
		}
		else{
			return "redirect:login";
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/login")
	public String login(HttpServletRequest req ,HttpSession session,Model model) {
		String userName = null;
		String db_userName=null;
		userName=req.getParameter("userName");
		User u=userBiz.getUserByName(userName);
		if( u!= null){
			db_userName=u.getUserName();
			session.setAttribute("userId", u.getId());
		}
		System.out.println("用户名--------------session---" + db_userName +"------"+session.getAttribute("isLogin"));
		return "redirect:index";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/login")
	public String login() {
		System.out.println("登录界面");
		return "mgr/login/login";
	}
}
