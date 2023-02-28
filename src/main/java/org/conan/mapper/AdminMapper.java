package org.conan.mapper;

import java.util.List;

import org.conan.domain.CategoryVO;
import org.conan.domain.GoodsVO;
import org.conan.domain.Criteria;
import org.conan.domain.AttachImageVO;

public interface AdminMapper {
	
	/* ��ǰ ��� */
	public void Enroll(GoodsVO vo);
	
	/* ī�װ� ����Ʈ */
	public List<CategoryVO> cateList();	
	
	/* ��ǰ ����Ʈ */
	public List<GoodsVO> goodsGetList(Criteria cri);
	
	/* ��ǰ �� ���� */
	public int goodsGetTotal(Criteria cri);	
	
	/* ��ǰ ��ȸ ������ */
	public GoodsVO goodsGetDetail(int gdsNum);
	
	/* ��ǰ ���� */
	public int goodsModify(GoodsVO vo);	
	
	/* ��ǰ ���� ���� */
	public int goodsDelete(int gdsNum);	
	
	/* �̹��� ��� */
	public void imageEnroll(AttachImageVO Attachvo);
	
	/* ���� ��ǰ �̹��� ��ü ���� */
	public void deleteImageAll(int gdsNum);
	
	/* ������ ��¥ �̹��� ����Ʈ */
	public List<AttachImageVO> checkFileList();
	
	/* ���� ��ǰ �̹��� ���� ��� */
	public List<AttachImageVO> getAttachInfo(int gdsNum);		
	
	/* �ֹ� ��ǰ ����Ʈ */

	
	/* �ֹ� �� ���� */
	public int getOrderTotal(Criteria cri);		
	
}