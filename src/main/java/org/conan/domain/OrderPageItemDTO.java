package org.conan.domain;

public class OrderPageItemDTO {
	
	/* 뷰로부터 전달받을 값 */
    private int gdsNum;
    
    private int gdsCount;
    
    /* DB로부터 꺼내올 값 */
    private String gdsName;
    
    private int gdsPrice;
    
    /* 만들어 낼 값 */
    private int salePrice;
    
    private int totalPrice;
    
    private int point;
    
    private int totalPoint;

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

	public String getGdsName() {
		return gdsName;
	}

	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}

	public int getGdsPrice() {
		return gdsPrice;
	}

	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getTotalPoint() {
		return totalPoint;
	}

	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}
	
	public void initSaleTotal() {
		this.salePrice = (int) (this.gdsPrice);
		
	}
	
	@Override
	public String toString() {
		return "OrderPageItemDTO [gdsNum=" + gdsNum + ", gdsCount=" + gdsCount + ", gdsName=" + gdsName
				+ ", gdsPrice=" + gdsPrice + ",salePrice=" + salePrice
				+ ", totalPrice=" + totalPrice + "]";
	}

}
