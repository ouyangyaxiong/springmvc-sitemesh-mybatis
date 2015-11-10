package com.tomtop.portal.mapper;

import java.util.List;

import com.tomtop.portal.pojo.Language;

public interface LanguageMapper extends BaseMapper<Language>{
    
	List<Language> getAll();
	
}