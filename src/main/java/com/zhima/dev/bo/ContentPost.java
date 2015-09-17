package com.zhima.dev.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "content_post", catalog = "zhimaweb")
public class ContentPost implements java.io.Serializable {
/*	  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
	  `cate_id` int(255) DEFAULT NULL COMMENT '内容类型',
	  `title` varchar(255) DEFAULT NULL COMMENT '标题',
	  `content` longtext COMMENT 'html内容',
	  `publisher` varchar(255) DEFAULT NULL COMMENT '创建者',
	  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
	  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
	  `visit_times` int(11) DEFAULT NULL,
	  `segment1` varchar(255) DEFAULT NULL COMMENT '备用字段',
	  `segement2` varchar(255) DEFAULT NULL COMMENT '备用字段',*/

	private Integer id;
	private Integer cateId;
	private String title;
	private String publisher;
	private Date createDate;
	private Date updateDate;
	private Integer visitedTimes;
	
	// Constructors
	public ContentPost() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ContentPost(Integer cateId, String title, String publisher,
			Date createDate, Date updateDate, Integer visitedTimes) {
		super();
		this.cateId = cateId;
		this.title = title;
		this.publisher = publisher;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.visitedTimes = visitedTimes;
	}

	
	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "cate_id")
	public Integer getCateId() {
		return cateId;
	}

	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}

	@Column(name = "title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "publisher")
	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	@Column(name = "create_date")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "update_date")
	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Integer getVisitedTimes() {
		return visitedTimes;
	}

	public void setVisitedTimes(Integer visitedTimes) {
		this.visitedTimes = visitedTimes;
	}


	




	
	


}
