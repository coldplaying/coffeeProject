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
	
	//select�׽�Ʈ
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}
	
	//insert�׽�Ʈ
	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("���� �ۼ��ϴ� ��");
		board.setContent("���� �ۼ��ϴ� ����");
		board.setWriter("newbie");
		mapper.insert(board);
		log.info(board);
	}
	
	//insertSelectKey�׽�Ʈ
	@Test
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setTitle("���� �ۼ��ϴ� ��3");
		board.setContent("���� �ۼ��ϴ� ����3");
		board.setWriter("newbie3");
		mapper.insertSelectKey(board);
		log.info(board);
	}
	
	//select �ϳ��� ���� �ҷ�����
	@Test
	public void testRead() {
		BoardVO board = mapper.read(5L);
		mapper.read(board);
		log.info(board);
	}
	
	//delete�׽�Ʈ
	@Test
	public void testDelete() {
		log.info("DELETE COUNT : " + mapper.delete(5L));
	}
	
	//update�׽�Ʈ
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setBno(2L);
		board.setTitle("������ ����");
		board.setContent("������ ����");
		board.setWriter("rose");
		int count = mapper.update(board);
		log.info("UPDATE COUNT : " + count);
	}
}
