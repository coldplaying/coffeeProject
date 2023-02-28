package org.conan.mapper;

import org.conan.domain.GoodsVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTest {
	
	@Autowired
	private AdminMapper mapper;
	
	/* ��ǰ ��� */
	@Test
	public void registerTest() throws Exception{
		
		GoodsVO goods = new GoodsVO();
		
		
		goods.setGdsName("mapper �׽�Ʈ");
		goods.setGdsNum(123);
		goods.setCateCode("100");
		goods.setGdsPrice(20000);
		goods.setGdsStock(300);
		goods.setGdsDes("å �Ұ� ");
		
		mapper.register(goods);
}
}
