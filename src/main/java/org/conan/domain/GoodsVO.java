package org.conan.domain;



import java.util.Date;
import java.util.List;

public class GoodsVO {

	/* ��ǰ id */
	private int gdsNum;
	
	/* ��ǰ �̸� */
	private String gdsName;
	
	/* �۰� id */
	private int authorId;
	
	/* �۰� �̸� */
	private String authorName;
	
	/* ������ */
	private String gdsDate;
	
	/* ���ǻ� */
	private String publisher;
	
	/* ī�װ� �ڵ� */
	private String cateCode;
	
	/* ī�װ� �̸� */
	private String cateName;
	
	/* ��ǰ ���� */
	private int gdsPrice;
	
	/* ��ǰ ��� */
	private int gdsStock;
	
	/* ��ǰ ���η�(�����) */
	private double gdsDiscount;
	
	/* ��ǰ �Ұ� */
	private String gdsDes;
	
	/* ��ǰ ���� */
	private String gdsContents;
	
	/* ��� ��¥ */
	private Date regDate;
	
	/* ���� ��¥ */
	private Date updateDate;
	
	
	
	/* �̹��� ���� */
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
