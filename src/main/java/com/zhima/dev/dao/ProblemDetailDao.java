package com.zhima.dev.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zhima.base.dao.BaseDao;
import com.zhima.base.util.PageResult;
import com.zhima.base.util.StringUtils;
import com.zhima.dev.bo.ProblemDetail;


@SuppressWarnings("rawtypes")
@Repository
@Transactional(readOnly = false)
public class ProblemDetailDao extends BaseDao{
	public PageResult<ProblemDetail> findPage(Integer pageNo, Integer pageSize, String typeId){
		if(!StringUtils.isNotEmpty(typeId)){
			return null;
		}
		
		return null;
	}
	
	public ProblemDetail findById(String id){
		if(!StringUtils.isNotEmpty(id))	return null;
		
		String hql = "select cp from ProblemDetail cp where cp.id = '" + Integer.parseInt(id) + "'";
		List<ProblemDetail> boList = this.find(hql);
		if(boList != null){
			if(boList.size() > 0){
				return boList.get(0);
			}
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public void update(ProblemDetail problemDetail){
		this.save(problemDetail);
	}
	
	public void delete(String id){
		if(!StringUtils.isNotEmpty(id))	return ;
		
		String hql = "delete from ProblemDetail cp where cp.id = '" + Integer.parseInt(id) + "'";
		this.getSession().createQuery(hql).executeUpdate();
	}
	
	

	public List<ProblemDetail> findList(){
		String hql = "select cp from ProblemDetail cp where 1 =1";
		List<ProblemDetail> boList = this.find(hql);
		return boList;
	}
	

}






