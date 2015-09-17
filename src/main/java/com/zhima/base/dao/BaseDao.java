/**
 * Copyright &copy; 2012-2013 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.zhima.base.dao;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.internal.CriteriaImpl;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.transform.ResultTransformer;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.zhima.base.util.HibernateConstrant;
import com.zhima.base.util.Reflections;
import com.zhima.base.util.StringUtils;



/**
 * DAO支持类实现
 * 
 * @author ThinkGem
 * @version 2013-05-15
 * @param <T>
 */
public class BaseDao<T> {

	/**
	 * SessionFactory
	 */
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * 实体类类型(由构造方法自动赋值)
	 */
	private Class<?> entityClass;

	/**
	 * 构造方法，根据实例类自动获取实体类类型
	 */
	public BaseDao() {
		entityClass = Reflections.getClassGenricType(getClass());
	}

	/**
	 * 获取 Session
	 */
	public Session getSession() {
		try {
			return sessionFactory.getCurrentSession();
		} catch (Exception e) {
			return sessionFactory.openSession();
		}
	}

	/**
	 * 强制与数据库同步
	 */
	public void flush() {
		getSession().flush();
	}

	/**
	 * 清除缓存数据
	 */
	public void clear() {
		getSession().clear();
	}

	// -------------- QL Query --------------

	/**
	 * QL 查询
	 * 
	 * @param qlString
	 * @return
	 */
	@Transactional(readOnly = true)
	public <E> List<E> find(String qlString) {
		return find(qlString, null);
	}

	/**
	 * QL 查询
	 * 
	 * @param qlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public <E> List<E> find(String qlString, Parameter parameter) {
		Query query = createQuery(qlString, parameter);
		return query.list();
	}

	/**
	 * QL 查询所有
	 * 
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return getSession().createCriteria(entityClass).list();
	}

	/**
	 * 获取实体
	 * 
	 * @param id
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public T get(Serializable id) {
		return (T) getSession().get(entityClass, id);
	}

	/**
	 * 获取实体
	 * 
	 * @param qlString
	 * @return
	 */
	@Transactional(readOnly = true)
	public T getByHql(String qlString) {
		return getByHql(qlString, null);
	}

	/**
	 * 获取实体
	 * 
	 * @param qlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public T getByHql(String qlString, Parameter parameter) {
		Query query = createQuery(qlString, parameter);
		return (T) query.uniqueResult();
	}

	/**
	 * 保存实体
	 * 
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public void save(T entity) {
		try {
			// 获取实体编号
			Object id = null;
			for (Method method : entity.getClass().getMethods()) {
				Id idAnn = method.getAnnotation(Id.class);
				if (idAnn != null) {
					id = method.invoke(entity);
					break;
				}
			}
			// 插入前执行方法
			if (null == id || StringUtils.isBlank(id.toString())) {
				for (Method method : entity.getClass().getMethods()) {
					PrePersist pp = method.getAnnotation(PrePersist.class);
					if (pp != null) {
						method.invoke(entity);
						break;
					}
				}
			}
			// 更新前执行方法
			else {
				for (Method method : entity.getClass().getMethods()) {
					PreUpdate pu = method.getAnnotation(PreUpdate.class);
					if (pu != null) {
						method.invoke(entity);
						break;
					}
				}
			}
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		getSession().saveOrUpdate(entity);
	}

	/**
	 * 保存实体列表
	 * 
	 * @param entityList
	 */
	@Transactional(readOnly = false)
	public void save(List<T> entityList) {
		for (T entity : entityList) {
			save(entity);
		}
	}

	/**
	 * 更新
	 * 
	 * @param qlString
	 * @return
	 */
	@Transactional(readOnly = false)
	public int update(String qlString) {
		return update(qlString, null);
	}

	/**
	 * 更新
	 * 
	 * @param qlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = false)
	public int update(String qlString, Parameter parameter) {
		return createQuery(qlString, parameter).executeUpdate();
	}

	/**
	 * 逻辑删除
	 * 
	 * @param id
	 * @param likeParentIds
	 * @return
	 */
	@Transactional(readOnly = false)
	public int deleteById(Serializable id, String status, String column) {
		return update("update " + entityClass.getSimpleName() + " set "
				+ column + " = '" + status + "' where id = :p1 ",
				new Parameter(id, id));
	}

	/**
	 * 物理删除
	 * 
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public void delete(T entity) {
		getSession().delete(entity);
	}

	/**
	 * 更新删除标记
	 * 
	 * @param id
	 * @param delFlag
	 * @return
	 */
	@Transactional(readOnly = false)
	public int updateDelFlag(Serializable id, String delFlag) {
		return update("update " + entityClass.getSimpleName()
				+ " set delFlag = :p2 where id = :p1", new Parameter(id,
				delFlag));
	}

	/**
	 * 创建 QL 查询对象
	 * 
	 * @param qlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = true)
	public Query createQuery(String qlString, Parameter parameter) {
		Query query = getSession().createQuery(qlString);
		setParameter(query, parameter);
		return query;
	}

	// -------------- SQL Query --------------

	/**
	 * SQL 查询
	 * 
	 * @param sqlString
	 * @return
	 */
	@Transactional(readOnly = true)
	public <E> List<E> findBySql(String sqlString) {
		return findBySql(sqlString, null, null);
	}

	/**
	 * SQL 查询
	 * 
	 * @param sqlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = true)
	public <E> List<E> findBySql(String sqlString, Parameter parameter) {
		return findBySql(sqlString, parameter, null);
	}

	/**
	 * SQL 查询
	 * 
	 * @param sqlString
	 * @param resultClass
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public <E> List<E> findBySql(String sqlString, Parameter parameter,
			Class<?> resultClass) {
		SQLQuery query = createSqlQuery(sqlString, parameter);
		setResultTransformer(query, resultClass);
		return query.list();
	}

	/**
	 * SQL 更新
	 * 
	 * @param sqlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = false)
	public int updateBySql(String sqlString, Parameter parameter) {
		return createSqlQuery(sqlString, parameter).executeUpdate();
	}

	/**
	 * 创建 SQL 查询对象
	 * 
	 * @param sqlString
	 * @param parameter
	 * @return
	 */
	@Transactional(readOnly = true)
	public SQLQuery createSqlQuery(String sqlString, Parameter parameter) {
		SQLQuery query = getSession().createSQLQuery(sqlString);
		setParameter(query, parameter);
		return query;
	}

	// -------------- Query Tools --------------

	/**
	 * 设置查询结果类型
	 * 
	 * @param query
	 * @param resultClass
	 */
	private void setResultTransformer(SQLQuery query, Class<?> resultClass) {
		if (resultClass != null) {
			if (resultClass == Map.class) {
				query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
			} else if (resultClass == List.class) {
				query.setResultTransformer(Transformers.TO_LIST);
			} else {
				query.addEntity(resultClass);
			}
		}
	}

	/**
	 * 设置查询参数
	 * 
	 * @param query
	 * @param parameter
	 */
	private void setParameter(Query query, Parameter parameter) {
		if (parameter != null) {
			Set<String> keySet = parameter.keySet();
			for (String string : keySet) {
				Object value = parameter.get(string);
				// 这里考虑传入的参数是什么类型，不同类型使用的方法不同
				if (value instanceof Collection<?>) {
					query.setParameterList(string, (Collection<?>) value);
				} else if (value instanceof Object[]) {
					query.setParameterList(string, (Object[]) value);
				} else {
					query.setParameter(string, value);
				}
			}
		}
	}

	/**
	 * 使用检索标准对象查询
	 * 
	 * @param detachedCriteria
	 * @return
	 */
	@Transactional(readOnly = true)
	public List<T> find(DetachedCriteria detachedCriteria) {
		return find(detachedCriteria, Criteria.DISTINCT_ROOT_ENTITY);
	}

	/**
	 * 使用检索标准对象查询
	 * 
	 * @param detachedCriteria
	 * @param resultTransformer
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public List<T> find(DetachedCriteria detachedCriteria,
			ResultTransformer resultTransformer) {
		Criteria criteria = detachedCriteria
				.getExecutableCriteria(getSession());
		criteria.setResultTransformer(resultTransformer);
		return criteria.list();
	}

	/**
	 * 使用检索标准对象查询记录数
	 * 
	 * @param detachedCriteria
	 * @return
	 */
	@Transactional(readOnly = true)
	@SuppressWarnings("rawtypes")
	public long count(DetachedCriteria detachedCriteria) {
		Criteria criteria = detachedCriteria
				.getExecutableCriteria(getSession());
		long totalCount = 0;
		try {
			// Get orders
			Field field = CriteriaImpl.class.getDeclaredField("orderEntries");
			field.setAccessible(true);
			List orderEntrys = (List) field.get(criteria);
			// Remove orders
			field.set(criteria, new ArrayList());
			// Get count
			criteria.setProjection(Projections.rowCount());
			totalCount = Long.valueOf(criteria.uniqueResult().toString());
			// Clean count
			criteria.setProjection(null);
			// Restore orders
			field.set(criteria, orderEntrys);
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return totalCount;
	}

	/**
	 * 创建与会话无关的检索标准对象
	 * 
	 * @param criterions
	 *            Restrictions.eq("name", value);
	 * @return
	 */

	public DetachedCriteria createDetachedCriteria(Criterion... criterions) {
		DetachedCriteria dc = DetachedCriteria.forClass(entityClass);
		for (Criterion c : criterions) {
			dc.add(c);
		}
		return dc;
	}

	// -------------- Hibernate search --------------

	/**
	 * 获取全文Session
	 */
	public FullTextSession getFullTextSession() {
		return Search.getFullTextSession(getSession());
	}

	/**
	 * 建立索引
	 */
	public void createIndex() {
		try {
			getFullTextSession().createIndexer(entityClass).startAndWait();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取全文查询对象
	 */
	public BooleanQuery getFullTextQuery(BooleanClause... booleanClauses) {
		BooleanQuery booleanQuery = new BooleanQuery();
		for (BooleanClause booleanClause : booleanClauses) {
			booleanQuery.add(booleanClause);
		}
		return booleanQuery;
	}

	/**
	 * 获取全文查询对象
	 * 
	 * @param q
	 *            查询关键字
	 * @param fields
	 *            查询字段
	 * @return 全文查询对象
	 */
	@Transactional(readOnly = true)
	public BooleanQuery getFullTextQuery(String q, String... fields) {
		// Analyzer analyzer = new IKAnalyzer();
		// BooleanQuery query = new BooleanQuery();
		// try {
		// if (StringUtils.isNotBlank(q)){
		// for (String field : fields){
		// QueryParser parser = new QueryParser(Version.LUCENE_36, field,
		// analyzer);
		// query.add(parser.parse(q), Occur.SHOULD);
		// }
		// }
		// } catch (ParseException e) {
		// e.printStackTrace();
		// }
		// return query;
		return null;
	}

	/**
	 * 设置关键字高亮
	 * 
	 * @param query
	 *            查询对象
	 * @param list
	 *            设置高亮的内容列表
	 * @param subLength
	 *            截取长度
	 * @param fields
	 *            字段名
	 */
	@Transactional(readOnly = true)
	public List<T> keywordsHighlight(BooleanQuery query, List<T> list,
			int subLength, String... fields) {
		// Analyzer analyzer = new IKAnalyzer();
		// Formatter formatter = new
		// SimpleHTMLFormatter("<span class=\"highlight\">", "</span>");
		// Highlighter highlighter = new Highlighter(formatter, new
		// QueryScorer(query));
		// highlighter.setTextFragmenter(new SimpleFragmenter(subLength));
		// for(T entity : list){
		// try {
		// for (String field : fields){
		// String text =
		// StringUtils.replaceHtml((String)Reflections.invokeGetter(entity,
		// field));
		// String description = highlighter.getBestFragment(analyzer,field,
		// text);
		// if(description!=null){
		// Reflections.invokeSetter(entity, fields[0], description);
		// break;
		// }
		// Reflections.invokeSetter(entity, fields[0], StringUtils.abbr(text,
		// subLength*2));
		// }
		// } catch (IOException e) {
		// e.printStackTrace();
		// } catch (InvalidTokenOffsetsException e) {
		// e.printStackTrace();
		// }
		// }
		// return list;
		return null;
	}


	/**
	 * 动态的去配置criteria条件查询器
	 * 
	 * @param criteria
	 *            当前配置的条件查询器
	 * @param map
	 *            传入配置的条件，map的键是eq，lg,gt
	 *            等criteria支持的条件语句，值一个list集合，里面存放了，当前需要进行条件的字段 暂时不支持or
	 * @param dto
	 *            dto对象
	 */
	@SuppressWarnings("rawtypes")
	public void setCriteria(Criteria criteria, Map<String, String> map,
			Object dto) {
		if (map != null && dto != null) {
			Iterator iter = map.keySet().iterator();
			String key = null;
			while (iter.hasNext()) {
				key = (String) iter.next();
				eachExpression(criteria, map, dto, key);
			}
		}

	}

	/**
	 * 遍历表达式
	 * 
	 * @param criteria
	 * @param map
	 * @param dto
	 * @param key
	 */
	public void eachExpression(Criteria criteria, Map<String, String> map,
			Object dto, String key) {
		String[] list = map.get(key).split(",");
		if (list != null
				&& HibernateConstrant.HIBERNATE_EXPRESSION.contains(key)) {
			setExpression(criteria, list, key, dto);
		}

	}

	/**
	 * 动态的设置criteria的eq,gt,ge,lt,le值条件
	 * 
	 * @param criteria
	 * @param list
	 *            需要配置的字段
	 */
	@SuppressWarnings("rawtypes")
	private void setExpression(Criteria criteria, String[] list,
			String expression, Object dto) {
		Class dtoClass = dto.getClass();
		try {
			for (String str : list) {
				if (str != null && !"".equals(str.trim())) {
					Field dtoField = dtoClass.getDeclaredField(str);
					dtoField.setAccessible(true);
					if (dtoField != null) {
						if (HibernateConstrant.HIBERNATE_CRITERIA_EQ
								.equals(expression)) {
							criteria.add(Restrictions.eq(str, dtoField.get(dto)));
						} else if (HibernateConstrant.HIBERNATE_CRITERIA_GE
								.equals(expression)) {
							criteria.add(Restrictions.gt(str, dtoField.get(dto)));
						} else if (HibernateConstrant.HIBERNATE_CRITERIA_GT
								.equals(expression)) {
							criteria.add(Restrictions.ge(str, dtoField.get(dto)));
						} else if (HibernateConstrant.HIBERNATE_CRITERIA_LT
								.equals(expression)) {
							criteria.add(Restrictions.lt(str, dtoField.get(dto)));
						} else if (HibernateConstrant.HIBERNATE_CRITERIA_LE
								.equals(expression)) {
							criteria.add(Restrictions.le(str, dtoField.get(dto)));

						} else if (HibernateConstrant.HIBERNATE_CRITERIA_NE
								.equals(expression)) {
							criteria.add(Restrictions.ne(str, dtoField.get(dto)));
						} else if (HibernateConstrant.HIBERNATE_CRITERIA_LIKE
								.equals(expression)) {
							criteria.add(Restrictions.like(str,
									"%" + dtoField.get(dto) + "%"));
						}
					}

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Transaction createTransaction() {
		return getSession().beginTransaction();
	}

	public Transaction getTransaction() {
		return getSession().getTransaction();
	}
}