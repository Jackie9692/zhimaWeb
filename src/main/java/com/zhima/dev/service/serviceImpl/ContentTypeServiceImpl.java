package com.zhima.dev.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhima.dev.bo.ContentType;
import com.zhima.dev.dao.ContentTypeDao;
import com.zhima.dev.service.ContentTypeService;

@Service
public class ContentTypeServiceImpl implements ContentTypeService{
	
	@Autowired(required=false)
	private ContentTypeDao ContentTypeDao;
	public void setContentTypeDao(ContentTypeDao contentTypeDao) {
		ContentTypeDao = contentTypeDao;
	}
	@Override
	public List<ContentType> findList() {
		return ContentTypeDao.findList();
	}
	
}
