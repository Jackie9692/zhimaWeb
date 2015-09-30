package com.zhima.dev.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zhima.base.dao.BaseDao;
import com.zhima.base.util.PageResult;
import com.zhima.base.util.StringUtils;
import com.zhima.dev.bo.EnrollDetail;


@SuppressWarnings("rawtypes")
@Repository
@Transactional(readOnly = false)
public class EnrollDetailDao extends BaseDao{
	public PageResult<EnrollDetail> findPage(Integer pageNo, Integer pageSize, String typeId){
		if(!StringUtils.isNotEmpty(typeId)){
			return null;
		}
		
		return null;
	}
	
	public EnrollDetail findById(String id){
		if(!StringUtils.isNotEmpty(id))	return null;
		
		String hql = "select cp from EnrollDetail cp where cp.id = '" + Integer.parseInt(id) + "'";
		List<EnrollDetail> boList = this.find(hql);
		if(boList != null){
			if(boList.size() > 0){
				return boList.get(0);
			}
		}
		return null;
	}
	
	
	public EnrollDetail findByPhoneMum(String phoneNum, String postId){
		if(StringUtils.isEmpty(phoneNum) || StringUtils.isEmpty(postId))	return null;
		
		String hql = "select cp from EnrollDetail cp where cp.phoneNumber = '" + phoneNum + "' and cp.postId = '" +postId+"'" ;
		List<EnrollDetail> boList = this.find(hql);
		if(boList != null){
			if(boList.size() > 0){
				return boList.get(0);
			}
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public void update(EnrollDetail enrollDetail){
		this.save(enrollDetail);
	}
	
	public void delete(String id){
		if(!StringUtils.isNotEmpty(id))	return ;
		
		String hql = "delete from EnrollDetail cp where cp.id = '" + Integer.parseInt(id) + "'";
		this.getSession().createQuery(hql).executeUpdate();
	}
	
	
	public List<EnrollDetail> findByPostId(String postId){
		if(!StringUtils.isNotEmpty(postId))	return null;
		
		String hql = "select ed from EnrollDetail ed where ed.postId = '" + Integer.parseInt(postId) + "'";
		
		return this.find(hql);
	}
	

}






