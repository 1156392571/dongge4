/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.sc.entity.TScUser;
import com.thinkgem.jeesite.modules.sc.dao.TScUserDao;

/**
 * 商城用户表Service
 * @author dongge
 * @version 2017-10-18
 */
@Service
@Transactional(readOnly = true)
public class TScUserService extends CrudService<TScUserDao, TScUser> {

	public TScUser get(String id) {
		return super.get(id);
	}
	
	public List<TScUser> findList(TScUser tScUser) {
		return super.findList(tScUser);
	}
	
	public Page<TScUser> findPage(Page<TScUser> page, TScUser tScUser) {
		return super.findPage(page, tScUser);
	}
	
	@Transactional(readOnly = false)
	public void save(TScUser tScUser) {
		super.save(tScUser);
	}
	
	@Transactional(readOnly = false)
	public void delete(TScUser tScUser) {
		super.delete(tScUser);
	}
	
}