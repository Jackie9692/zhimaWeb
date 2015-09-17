/** 

 * Copyright (c) 2003-2011 Wonders Information Co.,Ltd. All Rights Reserved.
 * 5-6/F, 20 Bldg, 481 Guiping RD. Shanghai 200233,PRC
 *
 * This software is the confidential and proprietary information of Wonders Group.
 * (Research & Development Center). You shall not disclose such
 * Confidential Information and shall use it only in accordance with 
 * the terms of the license agreement you entered into with Wonders Group. 
 *
 * Distributable under GNU LGPL license by gun.org
 */

package com.zhima.base.util;

/**
 * Hibernate 工具常量类
 * 
 * @author YaoHang
 * @version $Revision$ 2013-10-21
 * @author (lastest modification by $Author$)
 * @since 4.0
 */
public class HibernateConstrant {
	// 条件
	public static final String HIBERNATE_CRITERIA_EQ = "eq"; // 等于

	public static final String HIBERNATE_CRITERIA_GT = "gt"; // 大于

	public static final String HIBERNATE_CRITERIA_GE = "ge"; // 大于等于

	public static final String HIBERNATE_CRITERIA_LT = "lt"; // 小于

	public static final String HIBERNATE_CRITERIA_LE = "le"; // 小于等于

	public static final String HIBERNATE_CRITERIA_NE = "ne"; // 不等于
	
	public static final String HIBERNATE_CRITERIA_LIKE = "like"; // 模糊
	
	public static final String HIBERNATE_EXPRESSION = "eq,le,gt,ge,lt,ne,like";

}
