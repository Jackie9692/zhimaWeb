package com.zhima.dev.bo;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "problem_detail", catalog = "zhimaweb")
public class ProblemDetail implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
/*	   `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `show_status` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,*/
	private Integer id;
	private String description;
	private String type;
	private String providerName;
	private String showStatus;
	private Timestamp createDate;

	// Constructors
	public ProblemDetail(){
		
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

	@Column(name = "description")
	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "type")
	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "provider_name")
	public String getProviderName() {
		return providerName;
	}


	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	@Column(name = "show_status")
	public String getShowStatus() {
		return showStatus;
	}


	public void setShowStatus(String showStatus) {
		this.showStatus = showStatus;
	}

	@Column(name = "create_date")
	public Timestamp getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}



	
	
	
	
	


}
