package com.webaid.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.webaid.service.AdviceService;
import com.webaid.service.CommentService;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private CommentService cService;

	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String home() throws Exception {
		
		return "admin/login";
	}
	
	@RequestMapping(value="/adminLogout", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest req){
		session.invalidate();
		session = req.getSession(false);
		System.out.println(session);
		return "redirect:/adminLogin";
	}

	@RequestMapping(value = "/adminIdPwChk/{id}/{pw}", method = RequestMethod.POST)
	public ResponseEntity<String> adminIdPwChk(@PathVariable("id") String id, @PathVariable("pw") String pw, HttpSession session) throws Exception {
		ResponseEntity<String> entity = null;
		if(id.equals("admin") && pw.equals("one2697575")){
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			session.setAttribute("name", "관리자");
		}else{
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	public String adminMain(HttpServletRequest req) throws Exception {
		logger.info("admin main get");
		
		HttpSession session = req.getSession(false);
		System.out.println(session);
		if(session == null){
			return "redirect:/adminLogin";
		}
		
		return "admin/main";
	}
}
