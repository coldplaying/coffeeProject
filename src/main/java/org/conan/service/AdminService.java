package org.conan.service;


import java.util.List;

import org.conan.domain.AttachImageVO;
import org.conan.domain.CategoryVO;
import org.conan.domain.Criteria;
import org.conan.domain.GoodsVO;

public interface AdminService {

	/* ��ǰ ��� */
	public void Enroll(GoodsVO goods) throws Exception;	
	
	/* ī�װ� ����Ʈ */
	public List<CategoryVO> cateList();
	public List<CategoryVO> category() throws Exception;
	
	
	/* ��ǰ ����Ʈ */
	public List<GoodsVO> goodsGetList(Criteria cri);

	
	/* ��ǰ �� ���� */
	public int goodsGetTotal(Criteria cri);		
	
	/* ��ǰ ��ȸ ������ */
	public GoodsVO goodsGetDetail(int gdsNum);	
	
	/* ��ǰ ���� */
	public int goodsModify(GoodsVO goods);	
	
	/* ��ǰ ���� ���� */
	public int goodsDelete(int gdsNum);	
	
	/* ���� ��ǰ �̹��� ���� ��� */
	public List<AttachImageVO> getAttachInfo(int gdsNum);		
	
	

	

	
	


}