package org.conan.mapper;

import org.conan.domain.GoodsVO;
import org.conan.domain.OrderDTO;
import org.conan.domain.OrderItemDTO;
import org.conan.domain.OrderPageItemDTO;

public interface OrderMapper {
	
	/* �ֹ� ��ǰ ���� */	
	public OrderPageItemDTO getGoodsInfo(int gdsNum);
	
	/* �ֹ� ��ǰ ����(�ֹ� ó��) */	
	public OrderItemDTO getOrderInfo(int gdsNum);
	
	/* �ֹ� ���̺� ��� */
	public int enrollOrder(OrderDTO ord);
	
	/* �ֹ� ������ ���̺� ��� */
	public int enrollOrderItem(OrderItemDTO orid);
	
	/* �ֹ� ��� ���� */
	public int deductStock(GoodsVO gd);
 

}
