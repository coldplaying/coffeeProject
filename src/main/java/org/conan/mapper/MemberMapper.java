package org.conan.mapper;

import org.conan.domain.MemberVO;

public interface MemberMapper {
	
	public void memberJoin(MemberVO member);
	
	
	public int idCheck(String userId);
	
	
	public MemberVO memberLogin(MemberVO member);
	
	/* �ֹ��� �ּ� ���� */
	public MemberVO getMemberInfo(String memberId);	
	
	
	public void memberModify(MemberVO member);
	
	
	public void memberDelete(MemberVO member);
}
