package org.conan.service;

import java.util.List;

import org.conan.domain.OrderPageItemDTO;

public interface OrderService {
	
	/* �ֹ� ���� */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);

}
