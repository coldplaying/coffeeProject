package org.conan.service;

import org.conan.domain.MemberVO;
import org.conan.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper membermapper;
	
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		membermapper.memberJoin(member);

	}
	
	@Override
	public int idCheck(String userId) throws Exception{
		return membermapper.idCheck(userId);
	}
	
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception{
		return membermapper.memberLogin(member);
	}
	
	@Override
	public MemberVO getMemberInfo(String userId) {
		
		return membermapper.getMemberInfo(userId);
		
	}
	
	@Override
	public void memberModify(MemberVO member) throws Exception{
		membermapper.memberModify(member);
	}
	
	@Override
	public void memberDelete(MemberVO member) throws Exception{
		membermapper.memberDelete(member);
	}

}
