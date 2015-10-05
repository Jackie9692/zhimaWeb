package com.zhima.dev.bo;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "enroll_detail", catalog = "zhimaweb")
public class EnrollDetail implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
/*	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `post_id` int(11) DEFAULT NULL,
	  `phone_num` varchar(20) DEFAULT NULL,
	  `username` varchar(30) DEFAULT NULL,
	  `numbers` int(11) DEFAULT NULL,
	  `signDate` datetime DEFAULT NULL,
	  `description` varchar(255) DEFAULT NULL,*/
	private Integer id;
	private Integer postId;
	private String phoneNumber;
	private String userName;
	private Integer numbers;
	private Timestamp signDate;
	private String description;

	// Constructors
	public EnrollDetail(){
		
	}
	
	public EnrollDetail(Integer postId, String userName, Integer numbers,
			Timestamp signDate, String description, String phoneNumber) {
		super();
		this.postId = postId;
		this.userName = userName;
		this.numbers = numbers;
		this.signDate = signDate;
		this.description = description;
		this.phoneNumber = phoneNumber;
	}



	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "post_id")
	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	
	@Column(name = "username")
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "numbers")
	public Integer getNumbers() {
		return numbers;
	}

	public void setNumbers(Integer numbers) {
		this.numbers = numbers;
	}

	@Column(name = "signDate")
	public Timestamp getSignDate() {
		return signDate;
	}

	public void setSignDate(Timestamp signDate) {
		this.signDate = signDate;
	}

	@Column(name = "description")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "phone_num")
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	


}
