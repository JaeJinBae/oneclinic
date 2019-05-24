package com.webaid.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.CommentVO;
import com.webaid.domain.NewsVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.AdviceService;
import com.webaid.service.CommentService;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private CommentService cService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req,Model model) {
		logger.info("deviceCheck.");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);			
			return "main/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "main/mIndex";
		}else if(device.isTablet()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "main/mIndex";
		}else{
			deviceType="normal";
			logger.info("디바이스타입= "+deviceType);			
			return "main/index";
		}
	}

	@RequestMapping(value="/menu01_01")
	public String menu01_1(){
		
		return "sub/menu01_1";
	}
	
	@RequestMapping(value="/menu01_02")
	public String menu01_2(){
		
		return "sub/menu01_2";
	}
	
	@RequestMapping(value="/menu01_03")
	public String menu01_3(){
		
		return "sub/menu01_3";
	}
	
	@RequestMapping(value="/menu01_04")
	public String menu01_4(){
		
		return "sub/menu01_4";
	}
	
	@RequestMapping(value="/menu02_01")
	public String menu02_1(){
		
		return "sub/menu02_1";
	}
	
	@RequestMapping(value="/menu02_02")
	public String menu02_2(){
		
		return "sub/menu02_2";
	}
	
	@RequestMapping(value="/menu02_03")
	public String menu02_3(){
		
		return "sub/menu02_3";
	}
	
	@RequestMapping(value="/menu02_04")
	public String menu02_4(){
		
		return "sub/menu02_4";
	}
	
	@RequestMapping(value="/menu03_01")
	public String menu03_1(){
		
		return "sub/menu03_1";
	}
	
	@RequestMapping(value="/menu03_02")
	public String menu03_2(){
		
		return "sub/menu03_2";
	}
	
	@RequestMapping(value="/menu03_03")
	public String menu03_3(){
		
		return "sub/menu03_3";
	}
	
	@RequestMapping(value="/menu03_04")
	public String menu03_4(){
		
		return "sub/menu03_4";
	}
	
	@RequestMapping(value="/menu03_05")
	public String menu03_5(){
		
		return "sub/menu03_5";
	}
	
	@RequestMapping(value="/menu04_01")
	public String menu04_1(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		
		List<NoticeVO> topList = nService.selectTopNotice();
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu04_1";
	}
	
	@RequestMapping(value="/menu04_01Read")
	public String menu04_1Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		NoticeVO vo=nService.selectOne(no);
		NoticeVO beforeVO = nService.selectBefore(no);
		NoticeVO afterVO = nService.selectAfter(no);
		
		nService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu04_1Read";
	}
	
	@RequestMapping(value="/menu04_02")
	public String menu04_2(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		List<NewsVO> list = newsService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu04_2";
	}
	
	@RequestMapping(value="/menu04_02Read")
	public String menu04_2Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		NewsVO vo=newsService.selectOne(no);
		NewsVO beforeVO = newsService.selectBefore(no);
		NewsVO afterVO = newsService.selectAfter(no);
		newsService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu04_2Read";
	}
	
	@RequestMapping(value="/menu04_03")
	public String menu04_3(@ModelAttribute("cri") SearchCriteria cri, Model model){
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu04_3";
	}
	
	@RequestMapping(value="/advicePwChk/{no}/{pw}", method=RequestMethod.POST)
	public ResponseEntity<String> menu04_3advicePwChk(@PathVariable("no") int no, @PathVariable("pw") String pw){
		ResponseEntity<String> entity = null;
		
		AdviceVO vo = aService.selectOne(no);
		
		if(vo.getPw().equals(pw)){
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		
		return entity;
	}
	
	@RequestMapping(value="/menu04_03Read")
	public String menu04_3Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model){
		AdviceVO vo=aService.selectOne(no);
		aService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu04_3Read";
	}
	
	@RequestMapping(value="/menu04_03Register")
	public String menu04_3Register(){
		
		return "sub/menu04_3Register";
	}
	
	@RequestMapping(value="/menu04_04")
	public String menu04_4(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		List<CommentVO> list = cService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu04_4";
	}
	
	@RequestMapping(value="/menu04_04Read")
	public String menu04_4Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		CommentVO vo=cService.selectOne(no);
		CommentVO beforeVO = cService.selectBefore(no);
		CommentVO afterVO = cService.selectAfter(no);
		
		cService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu04_4Read";
	}
	
	@RequestMapping(value="/menu04_05")
	public String menu04_5(){
		
		return "sub/menu04_5";
	}
	
	//mobile
	@RequestMapping(value="/mMenu01_01")
	public String mMenu01_1(){
		
		return "sub/mobileMenu01_1";
	}
	
	@RequestMapping(value="/mMenu01_02")
	public String mMenu01_2(){
		
		return "sub/mobileMenu01_2";
	}
	
	@RequestMapping(value="/mMenu01_03")
	public String mMenu01_3(){
		
		return "sub/mobileMenu01_3";
	}
	
	@RequestMapping(value="/mMenu01_04")
	public String mMenu01_4(){
		
		return "sub/mobileMenu01_4";
	}
	
	@RequestMapping(value="/mMenu02_01")
	public String mMenu02_1(){
		
		return "sub/mobileMenu02_1";
	}
	
	@RequestMapping(value="/mMenu02_02")
	public String mMenu02_2(){
		
		return "sub/mobileMenu02_2";
	}
	
	@RequestMapping(value="/mMenu02_03")
	public String mMenu02_3(){
		
		return "sub/mobileMenu02_3";
	}
	
	@RequestMapping(value="/mMenu02_04")
	public String mMenu02_4(){
		
		return "sub/mobileMenu02_4";
	}
	
	@RequestMapping(value="/mMenu03_01")
	public String mMenu03_1(){
		
		return "sub/mobileMenu03_1";
	}
	
	@RequestMapping(value="/mMenu03_02")
	public String mMenu03_2(){
		
		return "sub/mobileMenu03_2";
	}
	
	@RequestMapping(value="/mMenu03_03")
	public String mMenu03_3(){
		
		return "sub/mobileMenu03_3";
	}
	
	@RequestMapping(value="/mMenu03_04")
	public String mMenu03_4(){
		
		return "sub/mobileMenu03_4";
	}
	
	@RequestMapping(value="/mMenu03_05")
	public String mMenu03_5(){
		
		return "sub/mobileMenu03_5";
	}
	
	@RequestMapping(value="/mMenu04_01")
	public String mMenu04_1(){
		
		return "sub/mobileMenu04_1";
	}
	
	@RequestMapping(value="/mMenu04_02")
	public String mMenu04_2(){
		
		return "sub/mobileMenu04_2";
	}
	
	@RequestMapping(value="/mMenu04_03")
	public String mMenu04_3(){
		
		return "sub/mobileMenu04_3";
	}
	
	@RequestMapping(value="/mMenu04_04")
	public String mMenu04_4(){
		
		return "sub/mobileMenu04_4";
	}
	
	@RequestMapping(value="/mMenu04_05")
	public String mMenu04_5(){
		
		return "sub/mobileMenu04_5";
	}
	
}
