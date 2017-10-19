/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.sc.entity.TScShop;
import com.thinkgem.jeesite.modules.sc.dao.TScShopDao;

/**
 * 商品表Service
 * @author dongge
 * @version 2017-10-19
 */
@Service
@Transactional(readOnly = true)
public class TScShopService extends CrudService<TScShopDao, TScShop> {

	public TScShop get(String id) {
		return super.get(id);
	}
	
	public List<TScShop> findList(TScShop tScShop) {
		return super.findList(tScShop);
	}
	
	public Page<TScShop> findPage(Page<TScShop> page, TScShop tScShop) {
		return super.findPage(page, tScShop);
	}
	
	@Transactional(readOnly = false)
	public void save(TScShop tScShop) {
		super.save(tScShop);
	}
	
	@Transactional(readOnly = false)
	public void delete(TScShop tScShop) {
		super.delete(tScShop);
	}
	
}