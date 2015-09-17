package com.zhima.base.hibernate;

import org.hibernate.cfg.ImprovedNamingStrategy;
import org.hibernate.internal.util.StringHelper;

/**
 * 解决表名自动为小写的问题，表名大写
 * @author JackieLan
 *
 */
public class BasicNamingStrategy extends ImprovedNamingStrategy { 
	@Override 
	public String tableName(String tableName) { 
		return tableName.toUpperCase(); 
	} 
	
	@Override 
	public String classToTableName(String className) {  
		return tableName(StringHelper.unqualify(className).toUpperCase());  
	}
}
