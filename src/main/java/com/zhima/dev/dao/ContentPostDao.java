package com.zhima.dev.dao;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.hibernate.type.TimestampType;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zhima.base.dao.BaseDao;
import com.zhima.base.util.PageResult;
import com.zhima.base.util.StringUtils;
import com.zhima.dev.bo.ContentPost;


@SuppressWarnings("rawtypes")
@Repository
@Transactional(readOnly = false)
public class ContentPostDao extends BaseDao{
	public PageResult<ContentPost> findPage(Integer pageNo, Integer pageSize, String typeId){
		if(!StringUtils.isNotEmpty(typeId)){
			return null;
		}
		String sqlStr = "SELECT cp.id id, cp.cate_id cateId, " +
				"cp.title title , cp.publisher publisher,"+
				"cp.create_date createDate, cp.update_date updateDate," +
				"cp.visit_times visitedTimes" +
				" FROM content_post cp WHERE cp.cate_id = '" + typeId + "' order by createDate desc";
		String countSqlStr ="select count(cp.id) from content_post cp WHERE cp.cate_id = '" + typeId + "'";

		SQLQuery countSql = this.getSession().createSQLQuery(countSqlStr);
		BigInteger countBD = (BigInteger) countSql.uniqueResult();
		long count = countBD.longValue();

		SQLQuery query = this.getSession().createSQLQuery(sqlStr)
				.addScalar("id", IntegerType.INSTANCE)
				.addScalar("cateId", IntegerType.INSTANCE)
				.addScalar("title", StringType.INSTANCE)
				.addScalar("publisher", StringType.INSTANCE)
				.addScalar("createDate", TimestampType.INSTANCE)
				.addScalar("updateDate", TimestampType.INSTANCE)
				.addScalar("visitedTimes", IntegerType.INSTANCE);


		query.setFirstResult((pageNo - 1) * pageSize);
		query.setMaxResults(pageSize);

		query.setResultTransformer(Transformers.aliasToBean(ContentPost.class));
		List<ContentPost> voList = query.list();

		PageResult<ContentPost> pageResult = new PageResult<ContentPost>(pageNo, pageSize, new Integer((int) count), voList);
		return pageResult;
	}
	
	public ContentPost findById(String id){
		if(!StringUtils.isNotEmpty(id))	return null;
		
		String hql = "select cp from ContentPost cp where cp.id = '" + Integer.parseInt(id) + "'";
		List<ContentPost> boList = this.find(hql);
		if(boList != null){
			if(boList.size() > 0){
				return boList.get(0);
			}
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public void update(ContentPost contentPost){
		this.save(contentPost);
	}
	
	public void delete(String id){
		if(!StringUtils.isNotEmpty(id))	return ;
		
		String hql = "delete from ContentPost cp where cp.id = '" + Integer.parseInt(id) + "'";
		this.getSession().createQuery(hql).executeUpdate();
	}
	

}






