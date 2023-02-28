package org.conan.service;

import java.util.List;

import org.conan.domain.ReplyVO;
import org.conan.mapper.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	@Override
	public int register(ReplyVO vo) {
		log.info("register....." + vo);
		return mapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long rno) {
		log.info("get....." + rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		log.info("modify....." + vo);
		return mapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		log.info("remove....." + rno);
		return mapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(Long bno) {
		log.info("get Reply List of a Board....." + bno);
		return mapper.getList(bno);
	}

}
