package org.conan.domain;

import java.sql.Date;

public class MemberVO {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String phoneNo;
	private String address1;
	private String address2;
	private Date regDate;
	private String adminChk;
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getAdminChk() {
		return adminChk;
	}
	public void setAdminChk(String adminChk) {
		this.adminChk = adminChk;
	}
	@Override
	public String toString() {
		return "MemberVO [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", email=" + email + ", phoneNo=" + phoneNo + ", address1=" + address1 + ", address2=" + address2
				+ ", regDate=" + regDate + ", adminChk=" + adminChk + "]";
	}
	

	
	
}
