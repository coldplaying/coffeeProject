package org.conan.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.conan.domain.CateVO;
import org.conan.domain.CategoryVO;
import org.conan.domain.MemberVO;
import org.conan.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;

@Controller
@Log4j
@RequestMapping("/cate/*")
public class CateController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/cate", method=RequestMethod.GET)
	public void cateGet() {
		
	}
	
	
}
