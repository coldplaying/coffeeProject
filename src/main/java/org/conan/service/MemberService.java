package org.conan.service;

import java.util.List;

import org.conan.domain.BoardVO;
import org.conan.domain.MemberVO;

public interface MemberService {
public void memberJoin(MemberVO member) throws Exception;
	
	
	public int idCheck(String userId) throws Exception;

	
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	
	public MemberVO getMemberInfo(String userId);
	
	
	public void memberModify(MemberVO member) throws Exception;
	
	public void memberDelete(MemberVO member) throws Exception;
	
}
