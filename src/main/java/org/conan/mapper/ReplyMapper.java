package org.conan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.conan.domain.ReplyVO;

public interface ReplyMapper {
	
	//insert
	public int insert(ReplyVO vo);
	
	//select
	public ReplyVO read(Long rno);
	
	//delete
	public int delete(Long rno);
	
	//update
	public int update(ReplyVO reply);
	
	public List<ReplyVO> getList(@Param("bno") Long bno);
}
