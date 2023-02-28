package org.conan.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.conan.domain.BoardVO;
import org.conan.domain.MemberVO;
import org.conan.service.BoardService;
import org.conan.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	@Autowired
	private MemberService memberservice;
	@Autowired
	private BoardService service;
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping(value="join", method = RequestMethod.GET)
	public void joinGET() {
		log.info("회원가입 페이지 진입");
	}
	
	@RequestMapping(value="join", method = RequestMethod.POST)
	public String joinPost(MemberVO member, HttpServletRequest request) throws Exception {
		log.info("join POST진입");
		
		String beforePwd = "";
		String encodePwd = "";
		
		beforePwd = member.getUserPwd();
		encodePwd = pwEncoder.encode(beforePwd);
		member.setUserPwd(encodePwd);
		
		memberservice.memberJoin(member);
		
		request.setAttribute("msg", "회원가입이 완료되었습니다");
		request.setAttribute("url", "/");
		
		return "/alert";
		
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public void loginGET() {
		log.info("로그인 페이지 진입");
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO member,
			RedirectAttributes rttr/* , HttpSession session */) throws Exception{
		
		HttpSession session = request.getSession();
		String beforePwd = "";
		String encodePwd = "";
		String userName = "";
	
		MemberVO lvo = memberservice.memberLogin(member);	
		
		if(lvo != null) {			
			
			beforePwd = member.getUserPwd();		
			encodePwd = lvo.getUserPwd();
			userName = lvo.getUserName();
			
			if(true == pwEncoder.matches(beforePwd, encodePwd)) {		
				
				lvo.setUserPwd("");					
				session.setAttribute("member", lvo); 	
				log.info("lvo : "+lvo);
				log.info("member : "+member);
				rttr.addFlashAttribute("test", "test");
				
				
				
				request.setAttribute("msg", userName+"님 환영합니다!");
				request.setAttribute("url", "/");
				
				return "/alert";		
				
				
			} else {

				rttr.addFlashAttribute("result", 0);	
				
				request.setAttribute("msg", "비밀번호가 정확하지 않습니다");
				request.setAttribute("url", "/member/login");
				
				return "/alert";	
				
			}
			
		} else {					
			
			rttr.addFlashAttribute("result", 0);	
			
			request.setAttribute("msg", "회원정보가 없습니다 다시 로그인해 주세요");
			request.setAttribute("url", "/member/login");
			
			return "/alert";	
			
		}
		
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception{
		log.info("logoutGET 진입");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		request.setAttribute("msg", "로그아웃 되었습니다");
		request.setAttribute("url", "/");
		
		return "/alert";
	}
	
	//id중복체크
	@RequestMapping(value="/userIdCheck", method=RequestMethod.POST)
	@ResponseBody
	public String userIdChkPOST(String userId) throws Exception{
		log.info("userIdChk() 진입");
		
		int result = memberservice.idCheck(userId);
		log.info("결과값 : " + result);
		
		if(result != 0) {
			return "fail";
		}else {
			return "success";
		}
	}
	
	@RequestMapping(value="mypage", method = RequestMethod.GET)
	public void myPageGET() {
		log.info("마이페이지 진입");
	}
	
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String userModify(MemberVO member, HttpServletRequest request) throws Exception {
		log.info("modify POST진입");
		String beforePwd = "";
		String encodePwd = "";
		String email = "";
		String phoneNo = "";
		String address1 = "";
		String address2 = "";
		
		beforePwd = member.getUserPwd();
		encodePwd = pwEncoder.encode(beforePwd);
		member.setUserPwd(encodePwd);
		
		email = member.getEmail();
		phoneNo = member.getPhoneNo();
		address1 = member.getAddress1();
		address2 = member.getAddress2();
		
		member.setEmail(email);
		member.setPhoneNo(phoneNo);
		member.setAddress1(address1);
		member.setAddress2(address2);
		log.info(member);
		
		memberservice.memberModify(member);
		
		request.setAttribute("msg", "회원정보가 수정되었습니다.");
		request.setAttribute("url", "/");
		
		return "/alert";
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String userDelete(MemberVO member, HttpServletRequest request) throws Exception {
		log.info("delete POST 진입");
		memberservice.memberDelete(member);
		
		request.setAttribute("msg", "회원탈퇴가 완료되었습니다");
		request.setAttribute("url", "/");
		return "/alert";
	}
	
	
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public void getCart() {
		
	}
	
}
