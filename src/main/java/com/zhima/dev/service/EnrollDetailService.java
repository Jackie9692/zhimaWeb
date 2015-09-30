package com.zhima.dev.service;

import java.util.List;

import com.zhima.dev.bo.EnrollDetail;


public interface EnrollDetailService {
	public List<EnrollDetail> findListByPostId(String postId);
		
	public EnrollDetail findById(String id);//通过Id查找
	
	public void create(EnrollDetail enrollDetail);// 生成
	
	public void update(EnrollDetail enrollDetail);//修改
	
	public void delete(String id);//删除
	
	public EnrollDetail findByPhoneMum(String phoneNum, String postId);
}
