package org.conan.controller;

import static org.junit.Assert.assertNotNull;

import org.conan.domain.BoardVO;
import org.conan.service.BoardService;
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
public class BoardServiceTests {
   @Setter(onMethod_=@Autowired)
   private BoardService service;
   
   @Test
   public void testExist() {
      log.info(service);
      assertNotNull(service);
   }
   
   @Test 
   public void testGetList() {
	   service.getList().forEach(board -> log.info(board));
   }
   
   @Test
   public void testRegister() {
	   BoardVO board = new BoardVO();
	   board.setTitle("���� from Service");
	   board.setContent("������ from Service");
	   board.setWriter("newbie");
	   service.register(board);
	   log.info("������ �Խù��� ��ȣ : " + board.getBno());
   }
   
   @Test
   public void testGet() {
	   log.info(service.get(7L).getTitle());
   }
   
   @Test
   public void testDelete() {
	   log.info("REMOVE RESULT : " + service.remove(7L));
   }
   
   @Test
   public void testUpdate() {
	   BoardVO board = service.get(8L);
	   if(board == null) { return; }
	   board.setTitle("������� from Service");
	   log.info("MODIFY RESULT : " + service.modify(board));
   }
}