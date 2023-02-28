package org.conan.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Long bno;
	private String userId;
	private String title;
	private String content;
	private String userName;
	private Date regDate;
	private Date updateDate;
}
