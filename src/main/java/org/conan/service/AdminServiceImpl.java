package org.conan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import org.conan.mapper.AdminMapper;
import org.conan.domain.AttachImageVO;
import org.conan.domain.GoodsVO;
import org.conan.domain.CategoryVO;
import org.conan.domain.Criteria;


import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;	
	
	/* ��ǰ ��� */
	@Transactional
	@Override
	public void Enroll(GoodsVO vo) {
		
		log.info("(service)Enroll........");
		
		adminMapper.Enroll(vo);
		
		if(vo.getImageList() == null || vo.getImageList().size() <= 0) {
			return;
		}
		
		vo.getImageList().forEach(attach ->{
			
			attach.setGdsNum(vo.getGdsNum());
			adminMapper.imageEnroll(attach);
			
		});
		
		
	}

	/* ī�װ� ����Ʈ */
	@Override
	public List<CategoryVO> cateList() {
		
		log.info("(service)cateList........");
		
		return adminMapper.cateList();
	}

	/* ��ǰ ����Ʈ */
	@Override
	public List<GoodsVO> goodsGetList(Criteria cri) {
		
		log.info("goodsGetTotalList()..........");
		
		return adminMapper.goodsGetList(cri);
	}

	/* ��ǰ �� ���� */
	public int goodsGetTotal(Criteria cri) {
		
		log.info("goodsGetTotal().........");
		
		return adminMapper.goodsGetTotal(cri);
	}	
	
	/* ��ǰ ��ȸ ������ */
	@Override
	public GoodsVO goodsGetDetail(int gdsNum) {
		
		log.info("(service)bookGetDetail......." + gdsNum);
		
		return adminMapper.goodsGetDetail(gdsNum);
	}	
	
	/* ��ǰ ���� ���� */
	@Transactional
	@Override
	public int goodsModify(GoodsVO vo) {

		int result = adminMapper.goodsModify(vo);
		
		if(result == 1 && vo.getImageList() != null && vo.getImageList().size() > 0) {
			
			adminMapper.deleteImageAll(vo.getGdsNum());
			
			vo.getImageList().forEach(attach -> {
				
				attach.setGdsNum(vo.getGdsNum());
				adminMapper.imageEnroll(attach);
				
			});
			
		}
		
		return result;
	}	
	
	
	/* ��ǰ ���� ���� */
	@Override
	@Transactional
	public int goodsDelete(int gdsNum) {

		log.info("goodsDelete..........");
		
		adminMapper.deleteImageAll(gdsNum);			
		
		return adminMapper.goodsDelete(gdsNum);
	}		
	
	
	/* ���� ��ǰ �̹��� ���� ��� */
	@Override
	public List<AttachImageVO> getAttachInfo(int gdsNum) {
		
		log.info("getAttachInfo........");
		
		return adminMapper.getAttachInfo(gdsNum);
	}

	@Override
	public List<CategoryVO> category() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	

	
}