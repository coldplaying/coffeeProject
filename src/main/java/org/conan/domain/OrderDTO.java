package org.conan.domain;

import java.util.Date;
import java.util.List;

public class OrderDTO {

	/* 주문 번호 */
	private String orderId;

	/* 배송 받는이 */
	private String addressName;

	/* 주문 회원 아이디 */
	private String userId;

	/* 회원 주소 */
	private String address1;

	/* 회원 상세주소 */
	private String address2;

	/* 주문 상태 */
	private String orderState;

	/* 주문 상품 */
	private List<OrderItemDTO> orders;

	/* 배송비 */
	private int deliveryCost;

	/*
	 * 사용 포인트 private int usePoint;
	 */

	/* 주문 날짜 */
	private Date orderDate;

	/* DB테이블 존재 하지 않는 데이터 */

	/* 판매가(모든 상품 비용) */
	private int orderSalePrice;

	/* 최종 판매 비용 */
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
		/* 상품 비용 & 적립포인트 */
		for (OrderItemDTO order : orders) {
			orderSalePrice += order.getTotalPrice();

		}
		/* 배송비용 */
		if (orderSalePrice >= 30000) {
			deliveryCost = 0;
		} else {
			deliveryCost = 3000;
		}
		/* 최종 비용(상품 비용 + 배송비 - 사용 포인트) */
		orderFinalSalePrice = orderSalePrice + deliveryCost;
	}

}
