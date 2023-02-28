package org.conan.domain;

public class OrderItemDTO {

	
	/* �ֹ� ��ȣ */
	private String orderId;
	
	/* ��ǰ ��ȣ */
    private int gdsNum;
    
	/* �ֹ� ���� */
    private int gdsCount;
    
	/* vam_orderItem �⺻Ű */
    private int orderItemId;
    
	/* ��ǰ �� �� ���� */
    private int gdsPrice;
 
    
	/* DB���̺� ���� ���� �ʴ� ������ */
   
	/* �� ����(���� ����� ���� * �ֹ� ����) */
    private int totalPrice;


	public String getOrderId() {
		return orderId;
	}


	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}


	public int getGdsNum() {
		return gdsNum;
	}


	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}


	public int getGdsCount() {
		return gdsCount;
	}


	public void setGdsCount(int gdsCount) {
		this.gdsCount = gdsCount;
	}


	public int getOrderItemId() {
		return orderItemId;
	}


	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}


	public int getGdsPrice() {
		return gdsPrice;
	}


	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}


	@Override
	public String toString() {
		return "OrderItemDTO [orderId=" + orderId + ", gdsNum=" + gdsNum + ", gdsCount=" + gdsCount + ", orderItemId="
				+ orderItemId + ", gdsPrice=" + gdsPrice + ", totalPrice=" + totalPrice + "]";
	}
	
	public void initSaleTotal() {
		
		this.totalPrice = this.gdsCount;
		
		
	}
    
	
}
