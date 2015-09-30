package com.zhima.dev.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhima.dev.bo.ProblemDetail;
import com.zhima.dev.dao.ProblemDetailDao;
import com.zhima.dev.service.ProblemDetailService;

@Service
public class ProblemDetailServiceImpl implements ProblemDetailService{
	@Autowired(required=false)
	private ProblemDetailDao problemDetailDao;
	public void setProblemDetailDao(ProblemDetailDao problemDetailDao) {
		this.problemDetailDao = problemDetailDao;
	}

	@Override
	public List<ProblemDetail> findList() {
		
		return problemDetailDao.findList();
	}

	@Override
	public ProblemDetail findById(String id) {
		return problemDetailDao.findById(id);
	}

	@Override
	public void create(ProblemDetail problemDetail) {
		problemDetailDao.update(problemDetail);
	}

	@Override
	public void update(ProblemDetail problemDetail) {
		problemDetailDao.update(problemDetail);
		
	}

	@Override
	public void delete(String id) {
		problemDetailDao.delete(id);
		
	}


	

}
