package com.tomtop.portal.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tomtop.portal.biz.ILanguageBiz;
import com.tomtop.portal.mapper.LanguageMapper;
import com.tomtop.portal.pojo.Language;

@Service("languageBiz")
public class LanguageBiz implements ILanguageBiz {

	@Resource
	private LanguageMapper languageMapper;
	
	public List<Language> getAllLangs() {
		return languageMapper.getAll();
	}

	public int saveLang(Language language) {
		return languageMapper.insert(language);
	}

	public int deleteLang(int id) {
		return languageMapper.deleteByPrimaryKey(id);
	}
	
}
