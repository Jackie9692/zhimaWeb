package com.zhima.dev.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zhima.base.dao.BaseDao;
import com.zhima.dev.bo.ContentType;


@Repository
@Transactional(readOnly = false)
public class ContentTypeDao extends BaseDao{
	public List<ContentType> findList() {
		String hql = "select ss from ContentType ss where 1 = 1";
		List<ContentType> boList = this.find(hql);
		return boList;
	}

}






