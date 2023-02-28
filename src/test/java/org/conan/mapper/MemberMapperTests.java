package org.conan.mapper;

import org.conan.domain.MemberVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	//회원가입 쿼리 테스트 메서드
	@Test
	public void memberJoin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setUserId("testId");
		member.setUserPwd("testPwd");
		member.setUserName("testName");		
		member.setEmail("textEmail");		
		member.setAddress1("testAddress1");	
		member.setAddress2("testAddress2");	
		
		membermapper.memberJoin(member);	
		
	}
	
	@Test
	public void userIdChk() throws Exception{
		String id1 = "aaa";
		String id2 = "bbb";
		membermapper.idCheck(id1);
		membermapper.idCheck(id2);
	}
	
	@Test
	public void memberLogin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setUserId("testId");
		member.setUserPwd("testPwd");
		
		membermapper.memberLogin(member);
		System.out.println("결과값 : "+membermapper.memberLogin(member));
	}
}
