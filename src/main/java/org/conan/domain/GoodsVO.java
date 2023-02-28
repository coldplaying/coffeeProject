package org.conan.domain;



import java.util.Date;
import java.util.List;

public class GoodsVO {

	/* 상품 id */
	private int gdsNum;
	
	/* 상품 이름 */
	private String gdsName;
	
	/* 작가 id */
	private int authorId;
	
	/* 작가 이름 */
	private String authorName;
	
	/* 출판일 */
	private String gdsDate;
	
	/* 출판사 */
	private String publisher;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	/* 카테고리 이름 */
	private String cateName;
	
	/* 상품 가격 */
	private int gdsPrice;
	
	/* 상품 재고 */
	private int gdsStock;
	
	/* 상품 할인률(백분율) */
	private double gdsDiscount;
	
	/* 상품 소개 */
	private String gdsDes;
	
	/* 상품 목차 */
	private String gdsContents;
	
	/* 등록 날짜 */
	private Date regDate;
	
	/* 수정 날짜 */
	private Date updateDate;
	
	
	
	/* 이미지 정보 */
	private List<AttachImageVO> imageList;

	public int getGdsNum() {
		return gdsNum;
	}

	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}

	public String getGdsName() {
		return gdsName;
	}

	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}

	public String getGdsDate() {
		return gdsDate;
	}

	public void setGdsDate(String gdsDate) {
		this.gdsDate = gdsDate;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public int getGdsPrice() {
		return gdsPrice;
	}

	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}

	public int getGdsStock() {
		return gdsStock;
	}

	public void setGdsStock(int gdsStock) {
		this.gdsStock = gdsStock;
	}


	public void setGdsDes(String gdsDes) {
		this.gdsDes = gdsDes;
	}
	
	public void getGdsDes(String gdsDes) {
		this.gdsDes = gdsDes;
	}


	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	@Override
	public String toString() {
		return "GoodsVO [gdsNum=" + gdsNum + ", gdsName=" + gdsName 
				+ ", gdsDate=" + gdsDate + ", cateCode=" + cateCode
				+ ", cateName=" + cateName + ", gdsPrice=" + gdsPrice + ", gdsStock=" + gdsStock 
				+ 
				 ", imageList=" + imageList + "]";
	}



}
