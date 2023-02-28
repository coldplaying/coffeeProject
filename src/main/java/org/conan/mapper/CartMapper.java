package org.conan.mapper;

import java.util.List;
import org.conan.domain.CartDTO;

public interface CartMapper {

	
	/* īƮ �߰� */
	public int addCart(CartDTO cart);
	
	/* īƮ ���� */
	public int deleteCart(int cartId);
	
	/* īƮ ���� ���� */
	public int modifyCount(CartDTO cart);
	
	/* īƮ ��� */
	public List<CartDTO> getCart(String userId);	
	
	/* īƮ Ȯ�� */
	public CartDTO checkCart(CartDTO cart);
	
	
}
