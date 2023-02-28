package org.conan.domain;

import java.util.Date;
import java.util.List;

public class OrderDTO {

	/* �ֹ� ��ȣ */
	private String orderId;

	/* ��� �޴��� */
	private String addressName;

	/* �ֹ� ȸ�� ���̵� */
	private String userId;

	/* ȸ�� �ּ� */
	private String address1;

	/* ȸ�� ���ּ� */
	private String address2;

	/* �ֹ� ���� */
	private String orderState;

	/* �ֹ� ��ǰ */
	private List<OrderItemDTO> orders;

	/* ��ۺ� */
	private int deliveryCost;

	/*
	 * ��� ����Ʈ private int usePoint;
	 */

	/* �ֹ� ��¥ */
	private Date orderDate;

	/* DB���̺� ���� ���� �ʴ� ������ */

	/* �ǸŰ�(��� ��ǰ ���) */
	private int orderSalePrice;

	/* ���� �Ǹ� ��� */
	private int orderFinalSalePrice;

	
	
	
	
	public String getOrderId() {
		return orderId;
	}





	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}





	public String getAddressName() {
		return addressName;
	}





	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}





	public String getUserId() {
		return userId;
	}





	public void setUserId(String userId) {
		this.userId = userId;
	}





	public String getAddress1() {
		return address1;
	}





	public void setAddress1(String address1) {
		this.address1 = address1;
	}





	public String getAddress2() {
		return address2;
	}





	public void setAddress2(String address2) {
		this.address2 = address2;
	}





	public String getOrderState() {
		return orderState;
	}





	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}





	public List<OrderItemDTO> getOrders() {
		return orders;
	}





	public void setOrders(List<OrderItemDTO> orders) {
		this.orders = orders;
	}





	public int getDeliveryCost() {
		return deliveryCost;
	}





	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}





	public Date getOrderDate() {
		return orderDate;
	}





	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}





	public int getOrderSalePrice() {
		return orderSalePrice;
	}





	public void setOrderSalePrice(int orderSalePrice) {
		this.orderSalePrice = orderSalePrice;
	}





	public int getOrderFinalSalePrice() {
		return orderFinalSalePrice;
	}





	public void setOrderFinalSalePrice(int orderFinalSalePrice) {
		this.orderFinalSalePrice = orderFinalSalePrice;
	}
	
	





	@Override
	public String toString() {
		return "OrderDTO [orderId=" + orderId + ", addressName=" + addressName + ", userId=" + userId + ", address1="
				+ address1 + ", address2=" + address2 + ", orderState=" + orderState + ", orders=" + orders
				+ ", deliveryCost=" + deliveryCost + ", orderDate=" + orderDate + ", orderSalePrice=" + orderSalePrice
				+ ", orderFinalSalePrice=" + orderFinalSalePrice + "]";
	}





	public void getOrderPriceInfo() {
		/* ��ǰ ��� & ��������Ʈ */
		for (OrderItemDTO order : orders) {
			orderSalePrice += order.getTotalPrice();

		}
		/* ��ۺ�� */
		if (orderSalePrice >= 30000) {
			deliveryCost = 0;
		} else {
			deliveryCost = 3000;
		}
		/* ���� ���(��ǰ ��� + ��ۺ� - ��� ����Ʈ) */
		orderFinalSalePrice = orderSalePrice + deliveryCost;
	}

}
