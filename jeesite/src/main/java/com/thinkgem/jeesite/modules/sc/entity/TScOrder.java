/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 订单表Entity
 * @author dongge
 * @version 2017-10-19
 */
public class TScOrder extends DataEntity<TScOrder> {
	
	private static final long serialVersionUID = 1L;
	private String userId;		// 用户id
	private String shopId;		// 商品id
	private String shopNumber;		// 商品数量
	private String shopTotalprice;		// 商品总价
	private String orderremarks;		// 商品备注
	private String paytype;		// 支付方式：1.货到付款2.支付宝3.微信4.银行卡
	private String sendStatus;		// 配送状态0.未配送1.已配送
	private String status;		// 订单状态：0.未支付1.已支付2.退款3.未完成4.已完成
	private String couriertype;		// 快递种类
	private String couriernumber;		// 快递单号
	private String orderReserve1;		// 扩展字段1
	private String orderReserve2;		// 扩展字段2
	
	public TScOrder() {
		super();
	}

	public TScOrder(String id){
		super(id);
	}

	@Length(min=1, max=11, message="用户id长度必须介于 1 和 11 之间")
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Length(min=1, max=11, message="商品id长度必须介于 1 和 11 之间")
	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	
	@Length(min=1, max=11, message="商品数量长度必须介于 1 和 11 之间")
	public String getShopNumber() {
		return shopNumber;
	}

	public void setShopNumber(String shopNumber) {
		this.shopNumber = shopNumber;
	}
	
	public String getShopTotalprice() {
		return shopTotalprice;
	}

	public void setShopTotalprice(String shopTotalprice) {
		this.shopTotalprice = shopTotalprice;
	}
	
	@Length(min=0, max=255, message="商品备注长度必须介于 0 和 255 之间")
	public String getOrderremarks() {
		return orderremarks;
	}

	public void setOrderremarks(String orderremarks) {
		this.orderremarks = orderremarks;
	}
	
	@Length(min=0, max=1, message="支付方式长度必须介于 0 和 1 之间")
	public String getPaytype() {
		return paytype;
	}

	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	
	@Length(min=0, max=1, message="配送状态长度必须介于 0 和 1 之间")
	public String getSendStatus() {
		return sendStatus;
	}

	public void setSendStatus(String sendStatus) {
		this.sendStatus = sendStatus;
	}
	
	@Length(min=0, max=1, message="订单状态长度必须介于 0 和 1 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@Length(min=0, max=1, message="快递种类长度必须介于 0 和 1 之间")
	public String getCouriertype() {
		return couriertype;
	}

	public void setCouriertype(String couriertype) {
		this.couriertype = couriertype;
	}
	
	@Length(min=0, max=255, message="快递单号长度必须介于 0 和 255 之间")
	public String getCouriernumber() {
		return couriernumber;
	}

	public void setCouriernumber(String couriernumber) {
		this.couriernumber = couriernumber;
	}
	
	@Length(min=0, max=255, message="扩展字段1长度必须介于 0 和 255 之间")
	public String getOrderReserve1() {
		return orderReserve1;
	}

	public void setOrderReserve1(String orderReserve1) {
		this.orderReserve1 = orderReserve1;
	}
	
	@Length(min=0, max=255, message="扩展字段2长度必须介于 0 和 255 之间")
	public String getOrderReserve2() {
		return orderReserve2;
	}

	public void setOrderReserve2(String orderReserve2) {
		this.orderReserve2 = orderReserve2;
	}
	
}