/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.sc.entity.TScShopSize;
import com.thinkgem.jeesite.modules.sc.dao.TScShopSizeDao;

/**
 * 商品规格表Service
 * @author dongge
 * @version 2017-10-23
 */
@Service
@Transactional(readOnly = true)
public class TScShopSizeService extends CrudService<TScShopSizeDao, TScShopSize> {

	public TScShopSize get(String id) {
		return super.get(id);
	}
	
	public List<TScShopSize> findList(TScShopSize tScShopSize) {
		return super.findList(tScShopSize);
	}
	
	public Page<TScShopSize> findPage(Page<TScShopSize> page, TScShopSize tScShopSize) {
		return super.findPage(page, tScShopSize);
	}
	
	@Transactional(readOnly = false)
	public void save(TScShopSize tScShopSize) {
		super.save(tScShopSize);
	}
	
	@Transactional(readOnly = false)
	public void delete(TScShopSize tScShopSize) {
		super.delete(tScShopSize);
	}
	
}