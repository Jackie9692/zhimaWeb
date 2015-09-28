package com.zhima.dev.bo;

import java.sql.Timestamp;

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

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer cateId;
	private String title;
	private String content;
	private String publisher;
	private Timestamp createDate;
	private Timestamp updateDate;
	private Integer visitedTimes;
	
	// Constructors
	public ContentPost() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ContentPost(Integer cateId, String title, String publisher,
			Timestamp createDate, Timestamp updateDate, Integer visitedTimes) {
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

	@Column(name = "visit_times")
	public Integer getVisitedTimes() {
		return visitedTimes;
	}

	public void setVisitedTimes(Integer visitedTimes) {
		this.visitedTimes = visitedTimes;
	}

	@Column(name = "content")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "create_date")
	public Timestamp getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	@Column(name = "update_date")
	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	
	
}
