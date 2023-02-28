package org.conan.mapper;

import org.conan.domain.GoodsVO;
import org.conan.domain.OrderDTO;
import org.conan.domain.OrderItemDTO;
import org.conan.domain.OrderPageItemDTO;

public interface OrderMapper {
	
	/* 주문 상품 정보 */	
	public OrderPageItemDTO getGoodsInfo(int gdsNum);
	
	/* 주문 상품 정보(주문 처리) */	
	public OrderItemDTO getOrderInfo(int gdsNum);
	
	/* 주문 테이블 등록 */
	public int enrollOrder(OrderDTO ord);
	
	/* 주문 아이템 테이블 등록 */
	public int enrollOrderItem(OrderItemDTO orid);
	
	/* 주문 재고 차감 */
	public int deductStock(GoodsVO gd);
 

}
