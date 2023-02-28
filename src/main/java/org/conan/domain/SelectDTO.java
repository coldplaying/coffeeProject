package org.conan.domain;

import java.util.List;

public class SelectDTO {
	
	/* 상품 id */
	private int gdsNum;
	
	/* 상품 이름 */
	private String gdsName;
	
	/* 카테고리 이름 */
	private String cateName;
	
	private double ratingAvg;	
	
	/* 상품 이미지 */
	private List<AttachImageVO> imageList;

	public int getgdsNum() {
		return gdsNum;
	}

	public void setgdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}

	public String getgdsName() {
		return gdsName;
	}

	public void setgdsName(String gdsName) {
		this.gdsName = gdsName;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public double getRatingAvg() {
		return ratingAvg;
	}

	public void setRatingAvg(double ratingAvg) {
		this.ratingAvg = ratingAvg;
	}

	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	@Override
	public String toString() {
		return "SelectDTO [gdsNum=" + gdsNum + ", gdsName=" + gdsName + ", cateName=" + cateName + ", ratingAvg="
				+ ratingAvg + ", imageList=" + imageList + "]";
	}
	
}
