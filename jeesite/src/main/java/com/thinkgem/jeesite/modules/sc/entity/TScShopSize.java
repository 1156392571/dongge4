/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 商品规格表Entity
 * @author dongge
 * @version 2017-10-23
 */
public class TScShopSize extends DataEntity<TScShopSize> {
	
	private static final long serialVersionUID = 1L;
	private String scShopid;		// 商品ID
	private String scShopsize;		// 商品的规格
	private String scShopcount;		// 商品对应规格下库存量
	private String scShopcolor;		// 商品颜色类型
	private String scShopprice;		// 商品价格
	private String scPhotourl1;		// 图片路径1
	private String scPhotourl2;		// 图片路径2
	private String scPhotourl3;		// 图片路径3
	private String scRemarks;		// 备注
	private String scReserve1;		// 预留1
	private String scReserve2;		// 预留2
	private String scReserve3;		// 预留3
	private String scReserve4;		// 预留4
	
	public TScShopSize() {
		super();
	}

	public TScShopSize(String id){
		super(id);
	}

	@Length(min=1, max=45, message="商品ID长度必须介于 1 和 45 之间")
	public String getScShopid() {
		return scShopid;
	}

	public void setScShopid(String scShopid) {
		this.scShopid = scShopid;
	}
	
	@Length(min=0, max=45, message="商品的规格长度必须介于 0 和 45 之间")
	public String getScShopsize() {
		return scShopsize;
	}

	public void setScShopsize(String scShopsize) {
		this.scShopsize = scShopsize;
	}
	
	@Length(min=0, max=45, message="商品对应规格下库存量长度必须介于 0 和 45 之间")
	public String getScShopcount() {
		return scShopcount;
	}

	public void setScShopcount(String scShopcount) {
		this.scShopcount = scShopcount;
	}
	
	@Length(min=0, max=1, message="商品颜色类型长度必须介于 0 和 1 之间")
	public String getScShopcolor() {
		return scShopcolor;
	}

	public void setScShopcolor(String scShopcolor) {
		this.scShopcolor = scShopcolor;
	}
	
	@Length(min=1, max=45, message="商品价格长度必须介于 1 和 45 之间")
	public String getScShopprice() {
		return scShopprice;
	}

	public void setScShopprice(String scShopprice) {
		this.scShopprice = scShopprice;
	}
	
	@Length(min=1, max=45, message="图片路径1长度必须介于 1 和 45 之间")
	public String getScPhotourl1() {
		return scPhotourl1;
	}

	public void setScPhotourl1(String scPhotourl1) {
		this.scPhotourl1 = scPhotourl1;
	}
	
	@Length(min=1, max=45, message="图片路径2长度必须介于 1 和 45 之间")
	public String getScPhotourl2() {
		return scPhotourl2;
	}

	public void setScPhotourl2(String scPhotourl2) {
		this.scPhotourl2 = scPhotourl2;
	}
	
	@Length(min=1, max=45, message="图片路径3长度必须介于 1 和 45 之间")
	public String getScPhotourl3() {
		return scPhotourl3;
	}

	public void setScPhotourl3(String scPhotourl3) {
		this.scPhotourl3 = scPhotourl3;
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
	
	@Length(min=0, max=255, message="预留3长度必须介于 0 和 255 之间")
	public String getScReserve3() {
		return scReserve3;
	}

	public void setScReserve3(String scReserve3) {
		this.scReserve3 = scReserve3;
	}
	
	@Length(min=0, max=255, message="预留4长度必须介于 0 和 255 之间")
	public String getScReserve4() {
		return scReserve4;
	}

	public void setScReserve4(String scReserve4) {
		this.scReserve4 = scReserve4;
	}
	
}