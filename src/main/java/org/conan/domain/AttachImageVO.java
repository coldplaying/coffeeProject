package org.conan.domain;

public class AttachImageVO {

	/* ��� */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
	
	/* ���� �̸� */
	private String fileName;
	
	/* ��ǰ id */
	private int gdsNum;

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getGdsNum() {
		return gdsNum;
	}

	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}

	@Override
	public String toString() {
		return "AttachImageVO [uploadPath=" + uploadPath + ", uuid=" + uuid + ", fileName=" + fileName + ", bookId="
				+ gdsNum + "]";
	}
	
	
}
