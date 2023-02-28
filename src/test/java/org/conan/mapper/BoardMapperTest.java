package org.conan.mapper;

import org.conan.domain.BoardVO;
import org.conan.mapper.BoardMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTest {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	//select테스트
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}
	
	//insert테스트
	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("newbie");
		mapper.insert(board);
		log.info(board);
	}
	
	//insertSelectKey테스트
	@Test
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글3");
		board.setContent("새로 작성하는 내용3");
		board.setWriter("newbie3");
		mapper.insertSelectKey(board);
		log.info(board);
	}
	
	//select 하나의 값만 불러오기
	@Test
	public void testRead() {
		BoardVO board = mapper.read(5L);
		mapper.read(board);
		log.info(board);
	}
	
	//delete테스트
	@Test
	public void testDelete() {
		log.info("DELETE COUNT : " + mapper.delete(5L));
	}
	
	//update테스트
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setBno(2L);
		board.setTitle("수정한 제목");
		board.setContent("수정한 내용");
		board.setWriter("rose");
		int count = mapper.update(board);
		log.info("UPDATE COUNT : " + count);
	}
}
