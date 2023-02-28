package org.conan.domain;

public class OrderItemDTO {

	
	/* 주문 번호 */
	private String orderId;
	
	/* 상품 번호 */
    private int gdsNum;
    
	/* 주문 수량 */
    private int gdsCount;
    
	/* vam_orderItem 기본키 */
    private int orderItemId;
    
	/* 상품 한 개 가격 */
    private int gdsPrice;
 
    
	/* DB테이블 존재 하지 않는 데이터 */
   
	/* 총 가격(할인 적용된 가격 * 주문 수량) */
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
