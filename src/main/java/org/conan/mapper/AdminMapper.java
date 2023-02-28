package org.conan.mapper;

import java.util.List;

import org.conan.domain.CategoryVO;
import org.conan.domain.GoodsVO;
import org.conan.domain.Criteria;
import org.conan.domain.AttachImageVO;

public interface AdminMapper {
	
	/* 상품 등록 */
	public void Enroll(GoodsVO vo);
	
	/* 카테고리 리스트 */
	public List<CategoryVO> cateList();	
	
	/* 상품 리스트 */
	public List<GoodsVO> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);	
	
	/* 상품 조회 페이지 */
	public GoodsVO goodsGetDetail(int gdsNum);
	
	/* 상품 수정 */
	public int goodsModify(GoodsVO vo);	
	
	/* 상품 정보 삭제 */
	public int goodsDelete(int gdsNum);	
	
	/* 이미지 등록 */
	public void imageEnroll(AttachImageVO Attachvo);
	
	/* 지정 상품 이미지 전체 삭제 */
	public void deleteImageAll(int gdsNum);
	
	/* 어제자 날짜 이미지 리스트 */
	public List<AttachImageVO> checkFileList();
	
	/* 지정 상품 이미지 정보 얻기 */
	public List<AttachImageVO> getAttachInfo(int gdsNum);		
	
	/* 주문 상품 리스트 */

	
	/* 주문 총 갯수 */
	public int getOrderTotal(Criteria cri);		
	
}