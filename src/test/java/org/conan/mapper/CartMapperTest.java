package org.conan.mapper;

import java.util.List;

import org.conan.domain.CartDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
	
	@Test
	public void addCart() {
		String userId = "user1";
		int gdsNum = 2;
		int gdsStock = 13;
		
		
		
		CartDTO cart = new CartDTO();
		cart.setUserId(userId);
		
		cart.setGdsNum(gdsNum);
		cart.setGdsStock(gdsStock);
		
		int result = 0;
		result = mapper.addCart(cart);
		
		System.out.println("결과 : " + result);
		
	}	

	
	/* 카트 삭제 */

	@Test
	public void deleteCartTest() {
		int cartId = 1;
		
		mapper.deleteCart(cartId);
	}
	
	/* 카트 수량 수정 */

	@Test
	public void modifyCartTest() {
		int cartId = 3;
		int gdsStock = 5;
		
		CartDTO cart = new CartDTO();
		cart.setCartId(cartId);
		cart.setGdsStock(gdsStock);
		
		mapper.modifyCount(cart);
		
	}

	
	/* 카트 목록 */ 

	@Test
	public void getCartTest() {
		String memberId = "admin";
		
		
		List<CartDTO> list = mapper.getCart(memberId);
		for(CartDTO cart : list) {
			System.out.println(cart);
			cart.initSaleTotal();
			System.out.println("init cart : " + cart);
		}
		
		
	
	}
	

	@Test
	public void checkCartTest() {
		
		String userId = "admin";
		int gdsNum = 71;
		
		CartDTO cart = new CartDTO();
		cart.setUserId(userId);
		cart.setGdsNum(gdsNum);
		
		CartDTO resutlCart = mapper.checkCart(cart);
		System.out.println("결과 : " + resutlCart);
		
	}
}
