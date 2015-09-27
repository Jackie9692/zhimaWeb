package com.zhima.dev.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhima.base.util.PageResult;
import com.zhima.dev.bo.ContentPost;
import com.zhima.dev.dao.ContentPostDao;
import com.zhima.dev.service.PostService;

@Service
public class PostServiceImpl implements PostService{

	@Autowired 
	ContentPostDao contentPostDao;
	public void setContentPostDao(ContentPostDao contentPostDao) {
		this.contentPostDao = contentPostDao;
	}

	@Override
	public List<ContentPost> findList(String type) {
		return null;
	}

	@Override
	public PageResult<ContentPost> findPageList(Integer pageNo,Integer pageSize, String typeId) {
		return contentPostDao.findPage(pageNo, pageSize, typeId);
	}

	@Override
	public ContentPost findById(String id) {
		return contentPostDao.findById(id);
	}

	@Override
	public void create(ContentPost contentPost) {
		contentPostDao.update(contentPost);
	}

	@Override
	public void update(ContentPost contentPost) {
		contentPostDao.update(contentPost);
	}

	@Override
	public void delete(String id) {
		contentPostDao.delete(id);
	}

}






