package com.tomtop.portal.biz;

import java.util.List;

import com.tomtop.portal.pojo.Language;

public interface ILanguageBiz {

	public int saveLang(Language language);
	
	public List<Language> getAllLangs();
	
	public int deleteLang(int id);
	
}
