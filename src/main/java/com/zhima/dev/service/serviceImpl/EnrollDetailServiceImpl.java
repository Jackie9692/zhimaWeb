package com.zhima.dev.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhima.dev.bo.EnrollDetail;
import com.zhima.dev.dao.EnrollDetailDao;
import com.zhima.dev.service.EnrollDetailService;

@Service
public class EnrollDetailServiceImpl implements EnrollDetailService{
	@Autowired(required=false)
	private EnrollDetailDao enrollDetailDao;
	public void setEnrollDetailDao(EnrollDetailDao enrollDetailDao) {
		this.enrollDetailDao = enrollDetailDao;
	}

	@Override
	public List<EnrollDetail> findListByPostId(String postId) {
		
		return enrollDetailDao.findByPostId(postId);
	}

	@Override
	public EnrollDetail findById(String id) {
		return enrollDetailDao.findById(id);
	}

	@Override
	public void create(EnrollDetail enrollDetail) {
		enrollDetailDao.update(enrollDetail);
		
	}

	@Override
	public void update(EnrollDetail enrollDetail) {
		enrollDetailDao.update(enrollDetail);
		
	}

	@Override
	public void delete(String id) {
		enrollDetailDao.delete(id);
	}

	@Override
	public EnrollDetail findByPhoneMum(String phoneNum, String postId) {
		// TODO Auto-generated method stub
		return enrollDetailDao.findByPhoneMum(phoneNum, postId);
	}

}
