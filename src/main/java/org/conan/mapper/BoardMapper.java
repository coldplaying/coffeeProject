package org.conan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.conan.domain.BoardVO;

public interface BoardMapper {
//	@Select("select * from tbl_board where bno > 0") //BoardMapper.xml�� select�� �̵�
	public List<BoardVO> getList();
	
	
	//�޼ҵ� �߰�
	public void insert(BoardVO board);

	//�޼ҵ� �߰�
	public void insertSelectKey(BoardVO board);

	//select where����
	public void read(BoardVO board);
	public BoardVO read(long l);

	//update
	public int update(BoardVO board);

	//delete
	public int delete(long l);

}
