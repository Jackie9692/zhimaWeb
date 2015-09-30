package com.zhima.dev.service;

import java.util.List;

import com.zhima.dev.bo.ProblemDetail;


public interface ProblemDetailService {
	public List<ProblemDetail> findList();
	
	public ProblemDetail findById(String id);//通过Id查找
	
	public void create(ProblemDetail problemDetail);// 生成
	
	public void update(ProblemDetail problemDetail);//修改
	
	public void delete(String id);//删除
	

		
}
