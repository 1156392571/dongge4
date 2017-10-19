/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 商品表Entity
 * @author dongge
 * @version 2017-10-19
 */
public class TScShop extends DataEntity<TScShop> {
	
	private static final long serialVersionUID = 1L;
	private String shopName;		// 商品名称
	private String shopPrice;		// 商品价格
	private String shopDescribe;		// shop_describe
	private String shopType;		// 商品种类
	private Date shopCreatedate;		// 商品上架时间
	private String shopCount;		// 商品库存
	private String shopRemarks;		// 商品备注
	private String shopReserve1;		// 扩展字段1
	private String shopReserve2;		// 扩展字段2
	
	public TScShop() {
		super();
	}

	public TScShop(String id){
		super(id);
	}

	@Length(min=0, max=255, message="商品名称长度必须介于 0 和 255 之间")
	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	
	public String getShopPrice() {
		return shopPrice;
	}

	public void setShopPrice(String shopPrice) {
		this.shopPrice = shopPrice;
	}
	
	@Length(min=0, max=255, message="shop_describe长度必须介于 0 和 255 之间")
	public String getShopDescribe() {
		return shopDescribe;
	}

	public void setShopDescribe(String shopDescribe) {
		this.shopDescribe = shopDescribe;
	}
	
	@Length(min=0, max=1, message="商品种类长度必须介于 0 和 1 之间")
	public String getShopType() {
		return shopType;
	}

	public void setShopType(String shopType) {
		this.shopType = shopType;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getShopCreatedate() {
		return shopCreatedate;
	}

	public void setShopCreatedate(Date shopCreatedate) {
		this.shopCreatedate = shopCreatedate;
	}
	
	@Length(min=0, max=11, message="商品库存长度必须介于 0 和 11 之间")
	public String getShopCount() {
		return shopCount;
	}

	public void setShopCount(String shopCount) {
		this.shopCount = shopCount;
	}
	
	@Length(min=0, max=255, message="商品备注长度必须介于 0 和 255 之间")
	public String getShopRemarks() {
		return shopRemarks;
	}

	public void setShopRemarks(String shopRemarks) {
		this.shopRemarks = shopRemarks;
	}
	
	@Length(min=0, max=255, message="扩展字段1长度必须介于 0 和 255 之间")
	public String getShopReserve1() {
		return shopReserve1;
	}

	public void setShopReserve1(String shopReserve1) {
		this.shopReserve1 = shopReserve1;
	}
	
	@Length(min=0, max=255, message="扩展字段2长度必须介于 0 和 255 之间")
	public String getShopReserve2() {
		return shopReserve2;
	}

	public void setShopReserve2(String shopReserve2) {
		this.shopReserve2 = shopReserve2;
	}
	
}