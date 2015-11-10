package com.tomtop.portal.ctl;

import java.util.List;

import javax.annotation.Resource;

import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONWriter;
import com.tomtop.portal.biz.ILanguageBiz;
import com.tomtop.portal.pojo.Language;

@Controller
@RequestMapping("/mgr/lang")
public class LanguageCtl {
	
	@Resource
	private ILanguageBiz languageBiz;

	@RequestMapping("/add")
	public String listAndAdd(Model model){
		List<Language> langs = languageBiz.getAllLangs();
		model.addAttribute("langs", langs);
		return "lang/addlangs";
	}
	
	@RequestMapping(method = RequestMethod.POST,value = "/save")
	@ResponseBody public String save(@RequestParam(required = true) String lang){
		Language ltemp = new Language();
		ltemp.setLang(lang);
		languageBiz.saveLang(ltemp);
		return JSON.toJSONString(ltemp);
	}
	
	@RequestMapping(method = RequestMethod.POST,value = "/delete")
	@ResponseBody public String delete(@RequestParam(required = true) int id){
		int res = languageBiz.deleteLang(id);
		return String.valueOf(res);
	}
	
}
