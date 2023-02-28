package org.conan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/store/*")
@AllArgsConstructor
public class StoreController {
	
	@GetMapping("/store")
	public void storeGet() {
		
	}
	
	@GetMapping("/store1")
	public void store1Get() {
		
	}
	
	
}
