package org.conan.service;

import java.util.List;

import org.conan.domain.OrderPageItemDTO;

public interface OrderService {
	
	/* 주문 정보 */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);

}
