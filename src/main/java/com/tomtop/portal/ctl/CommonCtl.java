package com.tomtop.portal.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class CommonCtl {

	@RequestMapping("/")
	public String dashboard(){
		return "index/index";
	}
	
}
