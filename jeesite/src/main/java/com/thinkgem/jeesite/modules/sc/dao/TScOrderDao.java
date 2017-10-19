/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sc.entity.TScOrder;

/**
 * 订单表DAO接口
 * @author dongge
 * @version 2017-10-19
 */
@MyBatisDao
public interface TScOrderDao extends CrudDao<TScOrder> {
	
}