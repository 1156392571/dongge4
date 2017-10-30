/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 用户信息表Entity
 * @author dongge
 * @version 2017-10-30
 */
public class TScUser extends DataEntity<TScUser> {
	
	private static final long serialVersionUID = 1L;
	private String scName;		// 用户名
	private String scPassword;		// 密码
	private String scSex;		// 性别:0未知;1男;2女
	private String scPhone;		// 手机号
	private String scEmail;		// 电子邮箱
	private String scQq;		// QQ
	private String scWx;		// wx
	private Date scCreatedate;		// 创建时间
	private String scRemarks;		// 备注
	private String scReserve1;		// 预留1
	private String scReserve2;		// 预留2
	
	public TScUser() {
		super();
	}

	public TScUser(String id){
		super(id);
	}

	@Length(min=0, max=45, message="用户名长度必须介于 0 和 45 之间")
	public String getScName() {
		return scName;
	}

	public void setScName(String scName) {
		this.scName = scName;
	}
	
	@Length(min=0, max=45, message="密码长度必须介于 0 和 45 之间")
	public String getScPassword() {
		return scPassword;
	}

	public void setScPassword(String scPassword) {
		this.scPassword = scPassword;
	}
	
	@Length(min=0, max=1, message="性别:0未知;1男;2女长度必须介于 0 和 1 之间")
	public String getScSex() {
		return scSex;
	}

	public void setScSex(String scSex) {
		this.scSex = scSex;
	}
	
	@Length(min=1, max=45, message="手机号长度必须介于 1 和 45 之间")
	public String getScPhone() {
		return scPhone;
	}

	public void setScPhone(String scPhone) {
		this.scPhone = scPhone;
	}
	
	@Length(min=0, max=255, message="电子邮箱长度必须介于 0 和 255 之间")
	public String getScEmail() {
		return scEmail;
	}

	public void setScEmail(String scEmail) {
		this.scEmail = scEmail;
	}
	
	@Length(min=0, max=255, message="QQ长度必须介于 0 和 255 之间")
	public String getScQq() {
		return scQq;
	}

	public void setScQq(String scQq) {
		this.scQq = scQq;
	}
	
	@Length(min=0, max=255, message="wx长度必须介于 0 和 255 之间")
	public String getScWx() {
		return scWx;
	}

	public void setScWx(String scWx) {
		this.scWx = scWx;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="创建时间不能为空")
	public Date getScCreatedate() {
		return scCreatedate;
	}

	public void setScCreatedate(Date scCreatedate) {
		this.scCreatedate = scCreatedate;
	}
	
	@Length(min=0, max=255, message="备注长度必须介于 0 和 255 之间")
	public String getScRemarks() {
		return scRemarks;
	}

	public void setScRemarks(String scRemarks) {
		this.scRemarks = scRemarks;
	}
	
	@Length(min=0, max=255, message="预留1长度必须介于 0 和 255 之间")
	public String getScReserve1() {
		return scReserve1;
	}

	public void setScReserve1(String scReserve1) {
		this.scReserve1 = scReserve1;
	}
	
	@Length(min=0, max=255, message="预留2长度必须介于 0 和 255 之间")
	public String getScReserve2() {
		return scReserve2;
	}

	public void setScReserve2(String scReserve2) {
		this.scReserve2 = scReserve2;
	}
	
}