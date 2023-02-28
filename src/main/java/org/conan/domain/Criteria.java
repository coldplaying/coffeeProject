package org.conan.domain;

public class Criteria {
	/* ���� ������ ��ȣ */
	private int pageNum;
	
	/* ������ ǥ�� ���� */
	private int amount;
	
	/* �˻� Ÿ�� */
	private String type;
	
	/* �˻� Ű���� */
	private String keyword;
	
	
	/* ī�װ� �ڵ� */
	private String cateCode;
	
	/* ��ǰ ��ȣ(��� ��ɿ��� ���) */
	private int gdsNum;
	
	/* Criteria ������ */
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	/* Criteria �⺻ ������ */
	public Criteria(){
		this(1,10);
	}
	
	/* �˻� Ÿ�� ������ �迭 ��ȯ */
	public String[] getTypeArr() {
		return type == null? new String[] {}:type.split("");
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}



	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	
	public int getGdsNum() {
		return gdsNum;
	}

	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", type=" + type + ", keyword=" + keyword
				+  ", cateCode=" + cateCode + ", gdsNum=" + gdsNum + "]";
	}



	
}
