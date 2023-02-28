package org.conan.controller;


import java.util.ArrayList;
import java.util.Arrays;

import org.conan.domain.SampleDTO;
import org.conan.domain.SampleDTOList;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*") //root폴더 지정
@Log4j
public class SampleController {
	
	@GetMapping("/ex01")
	public String ex01(SampleDTO dto) {
		log.info("" + dto);
		return "ex01";
	}
	
	@GetMapping("/ex02")
	public String ex02(@RequestParam("name") String name, @RequestParam("age") int age) {
		log.info("name : " + name);
		log.info("age : " + age);
		return "ex02";
	}
	
	
	//List, 배열처리
	@GetMapping("/ex02List")
	public String ex02List(@RequestParam("ids") ArrayList<String> ids) {
		log.info("ids : " + ids);
		return "ex02List";
	}
	
	@GetMapping("/ex02Array")
	public String ex02Array(@RequestParam("ids") String[] ids) {
		log.info("array ids : " + Arrays.toString(ids));
		return "ex02Array";
	}
	
	//SampleDTOList
	@GetMapping("/ex02Bean")
	public String ex02Bean(SampleDTOList list) {
		log.info("list dtos : " + list);
		return "ex02Bean";
	}
	
	//Model
	@GetMapping("/ex04")
	//@ModelAttribute - 강제로 전달받은 파라미터를 모델에 담아서 타입에 관계없이 전달
	public String ex04(SampleDTO dto, @ModelAttribute("page") int page) {
		log.info("dto : " + dto);
		log.info("page : " + page);
		return "/sample/ex04";
	}
	
	//void타입(return X)
	@GetMapping("/ex05")
	public void ex05() {
		log.info("ex05.............");
	}
	
	//객체타입 - VO나 DTO등 복합적인 데이터가 들어간 객체타입으로 지정가능 
	//JSON데이터를 만들어내는 용도
	@GetMapping("/ex06")
	public @ResponseBody SampleDTO ex06() {
		log.info("ex06............");
		SampleDTO dto = new SampleDTO();
		dto.setAge(10);
		dto.setName("conan");
		return dto;
	}
	
	//ResponseEntity타입 - http프로토콜의 헤더를 다루는 경우
	@GetMapping("/ex07")
	public ResponseEntity <String> ex07(){
		log.info("ex07............");
		String msg = String.format("{\"name\" : \"conan\"}");
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "application/json;charset=UTF-8");
		return new ResponseEntity<>(msg, header, HttpStatus.NOT_FOUND);
		//NOT_FOUND - 404 / OK - 200 F12개발자모드 Network에서 확인가능
	}

}
