package com.zhima.base.util;

import java.io.Serializable;
import java.util.List;

public class PageResult<E> implements Serializable{
	private Integer pageNo;
	private Integer pageSize;
	private Integer count;
	private List<E> voList;
	public PageResult(Integer pageNo, Integer pageSize, Integer count,List<E> voList) {
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.count = count;
		this.voList = voList;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public List<E> getVoList() {
		return voList;
	}
	public void setVoList(List<E> voList) {
		this.voList = voList;
	}
	
	
	
}
