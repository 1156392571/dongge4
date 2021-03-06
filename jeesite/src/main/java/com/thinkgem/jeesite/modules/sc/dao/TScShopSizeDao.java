/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sc.entity.TScShopSize;

/**
 * 商品规格表DAO接口
 * @author dongge
 * @version 2017-10-23
 */
@MyBatisDao
public interface TScShopSizeDao extends CrudDao<TScShopSize> {
	
}