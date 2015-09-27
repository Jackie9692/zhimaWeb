package com.zhima.dev.service;

import java.util.List;

import com.zhima.base.util.PageResult;
import com.zhima.dev.bo.ContentPost;


public interface PostService {
	public List<ContentPost> findList(String type);
	
	public PageResult<ContentPost> findPageList(Integer pageNoint, Integer pageSizeint, String typeId); // 分页查询
	
	public ContentPost findById(String id);//通过Id查找
	
	public void create(ContentPost contentPost);// 生成
	
	public void update(ContentPost contentPost);//修改
	
	public void delete(String id);//修改
	

		
}
