/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sc.entity.TScUser;

/**
 * 商城用户表DAO接口
 * @author dongge
 * @version 2017-10-18
 */
@MyBatisDao
public interface TScUserDao extends CrudDao<TScUser> {
	
}