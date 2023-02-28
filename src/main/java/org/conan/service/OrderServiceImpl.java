package org.conan.service;

import java.util.ArrayList;
import java.util.List;

import org.conan.domain.OrderPageItemDTO;
import org.conan.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderMapper orderMapper;

	@Override
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders){
		
		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO goodsInfo = orderMapper.getGoodsInfo(ord.getGdsNum());
			
			goodsInfo.setGdsCount(ord.getGdsCount());
			
			goodsInfo.initSaleTotal();
			
			result.add(goodsInfo);
			
		}
		
		return result;
		
	}

}
