package org.conan.domain;

public class CartDTO {
	
	  private int cartId;
	    
	    private String userId;
	    
	    private int gdsNum;
	    
	    private int gdsStock;
	    
	    //book
	    
	    private String gdsName;
	    
	    private int gdsPrice;
	    
	    private int totalPrice;
	    
	    // Ãß°¡
	    public int getCartId() {
			return cartId;
		}

		public void setCartId(int cartId) {
			this.cartId = cartId;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public int getGdsNum() {
			return gdsNum;
		}

		public void setGdsNum(int gdsNum) {
			this.gdsNum = gdsNum;
		}

		public int getGdsStock() {
			return gdsStock;
		}

		public void setGdsStock(int gdsStock) {
			this.gdsStock = gdsStock;
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

		public void setgdsPrice(int gdsPrice) {
			this.gdsPrice = gdsPrice;
		}

		
		public int getTotalPrice() {
			return totalPrice;
		}
		
		
		public void initSaleTotal() {
			
			this.totalPrice += this.gdsPrice;
		}


		@Override
		public String toString() {
			return "CartDTO [cartId=" + cartId + ", userId=" + userId + ", gdsNum=" + gdsNum + ", gdsStock="
					+ gdsStock + ", gdsName=" + gdsName + ", gdsPrice=" + gdsPrice + ", totalPrice=" + totalPrice  +  "]";
		}
}
