package org.conan.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.conan.domain.ReplyVO;
import org.conan.mapper.ReplyMapper;
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
public class ReplyMapperTest {
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
	private Long[] bnoArr = {10L,11L,12L,13L,15L};
	
	@Test //insert
	public void testCreate() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			ReplyVO vo = new ReplyVO();
			vo.setBno(bnoArr[i % 5]);
			vo.setReply("´ñ±Û Å×½ºÆ®" + i);
			vo.setReplyer("replyer" + i);
			mapper.insert(vo);
		});
	}
	
	@Test //select
	public void testRead() {
		Long targetRno = 5L;
		ReplyVO vo = mapper.read(targetRno);
		log.info(vo);
	}
	
	@Test //delete
	public void testDelete() {
		Long targetRno = 1L;
		mapper.delete(targetRno);
	}
	
	@Test //update
	public void testUpdate() {
		Long targetRno = 11L;
		ReplyVO vo = mapper.read(targetRno);
		vo.setReply("Update Reply");
		int count = mapper.update(vo);
		log.info("Update Count : " + count);
	}
	
	@Test
	public void testList() {
		List<ReplyVO> replies = mapper.getList(bnoArr[0]);
		replies.forEach(reply -> log.info(reply));
	}
	
}
