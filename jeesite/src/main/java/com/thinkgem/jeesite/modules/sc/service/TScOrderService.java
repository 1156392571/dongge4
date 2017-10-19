/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.sc.entity.TScOrder;
import com.thinkgem.jeesite.modules.sc.dao.TScOrderDao;

/**
 * 订单表Service
 * @author dongge
 * @version 2017-10-19
 */
@Service
@Transactional(readOnly = true)
public class TScOrderService extends CrudService<TScOrderDao, TScOrder> {

	public TScOrder get(String id) {
		return super.get(id);
	}
	
	public List<TScOrder> findList(TScOrder tScOrder) {
		return super.findList(tScOrder);
	}
	
	public Page<TScOrder> findPage(Page<TScOrder> page, TScOrder tScOrder) {
		return super.findPage(page, tScOrder);
	}
	
	@Transactional(readOnly = false)
	public void save(TScOrder tScOrder) {
		super.save(tScOrder);
	}
	
	@Transactional(readOnly = false)
	public void delete(TScOrder tScOrder) {
		super.delete(tScOrder);
	}
	
}