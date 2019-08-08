package com.webaid.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.HttpClients;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.apache.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
	public String home(HttpServletRequest req,Model model) throws Exception {
		logger.info("deviceCheck.");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);
			SearchCriteria cri = new SearchCriteria();
			
			List<CommentVO> commentList = cService.listSearch(cri);
			List<NewsVO> newsList = newsService.listSearch(cri);
			
			model.addAttribute("commentList", commentList);
			model.addAttribute("newsList", newsList);
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
			SearchCriteria cri = new SearchCriteria();
			
			List<NoticeVO> noticeList = nService.listSearch(cri);
			
			model.addAttribute("noticeList", noticeList);
			return "main/index";
		}
	}
	
	@RequestMapping(value="/privacy_popup")
	public String privacy_popup(){
		return "sub/privacy_popup";
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
	
	@RequestMapping(value="/menu01_05")
	public String menu01_05(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		
		List<NoticeVO> topList = nService.selectTopNotice();
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu01_5";
	}
	
	@RequestMapping(value="/menu01_05Read")
	public String menu01_05Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
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
		return "sub/menu01_5Read";
	}
	
	@RequestMapping(value="/menu01_06")
	public String menu01_06(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		List<NewsVO> list = newsService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu01_6";
	}
	
	@RequestMapping(value="/menu01_06Read")
	public String menu01_06Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
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
		return "sub/menu01_6Read";
	}
	
	@RequestMapping(value="/menu01_07")
	public String menu01_7(){
		
		return "sub/menu01_7";
	}
	
	@RequestMapping(value="/menu01_08")
	public String menu01_08(@ModelAttribute("cri") SearchCriteria cri, Model model){
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu01_8";
	}
	
	@RequestMapping(value="/advicePwChk/{no}/{pw}", method=RequestMethod.POST)
	public ResponseEntity<String> menu01_8advicePwChk(@PathVariable("no") int no, @PathVariable("pw") String pw){
		ResponseEntity<String> entity = null;
		
		AdviceVO vo = aService.selectOne(no);
		
		if(vo.getPw().equals(pw)){
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		
		return entity;
	}
	
	@RequestMapping(value="/menu01_08Read")
	public String menu01_08Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model){
		AdviceVO vo=aService.selectOne(no);
		aService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu01_8Read";
	}
	
	@RequestMapping(value="/menu01_08Register")
	public String menu01_8Register(){
		
		return "sub/menu01_8Register";
	}
	
	@RequestMapping(value="/adviceRegister", method=RequestMethod.POST)
	public ResponseEntity<String> adviceRegister(@RequestBody Map<String, String> info){
		ResponseEntity<String> entity = null;
		System.out.println(info);
		try {
			AdviceVO vo = new AdviceVO();
			vo.setTitle(info.get("title"));
			vo.setContent(info.get("content"));
			vo.setWriter(info.get("writer"));
			vo.setRegdate(info.get("regdate"));
			vo.setPhone(info.get("phone"));
			vo.setPwtype(info.get("pwType"));
			vo.setPw(info.get("pw"));
			vo.setReplytype(info.get("replyType"));
			vo.setReplytime(info.get("replyTime"));
			vo.setReply("");
			aService.insert(vo);
			
			String res = sendSMS(info);
			
			if(res.equals("ok")){
				entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.OK);
		}
		return entity;
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
	
	@RequestMapping(value="/menu03_06")
	public String menu03_6(){
		
		return "sub/menu03_6";
	}
	
	@RequestMapping(value="/menu04_01")
	public String menu04_1(){
		
		return "sub/menu04_1";
	}
	
	@RequestMapping(value="/menu04_02")
	public String menu04_2(){
		
		return "sub/menu04_2";
	}
	
	@RequestMapping(value="/menu04_03")
	public String menu04_3(){
		
		return "sub/menu04_3";
	}
	
	//치료후기
	/*@RequestMapping(value="/menu04_04")
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
	}*/
	
	
	
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
	
	@RequestMapping(value="/mMenu01_05")
	public String mMenu01_05(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		List<NoticeVO> topList = nService.selectTopNotice();
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/mobileMenu01_5";
	}
	
	@RequestMapping(value="/mMenu01_05Read")
	public String mMenu01_05Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
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
		return "sub/mobileMenu01_5Read";
	}

	@RequestMapping(value="/mMenu01_06")
	public String mMenu01_6(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		List<NewsVO> list = newsService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/mobileMenu01_6";
	}
	
	@RequestMapping(value="/mMenu01_06Read")
	public String mMenu01_6Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
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
		
		return "sub/mobileMenu01_6Read";
	}
	
	@RequestMapping(value="/mMenu01_07")
	public String mMenu01_7(){
		
		return "sub/mobileMenu01_7";
	}
	
	@RequestMapping(value="/mMenu01_08")
	public String mMenu01_8(@ModelAttribute("cri") SearchCriteria cri, Model model){
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/mobileMenu01_8";
	}
	
	@RequestMapping(value="/mMenu01_08Read")
	public String mMenu01_8Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model){
		AdviceVO vo=aService.selectOne(no);
		aService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/mobileMenu01_8Read";
	}
	
	@RequestMapping(value="/mMenu01_08Register")
	public String mMenu01_8Register(){
		
		return "sub/mobileMenu01_8Register";
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
	
	@RequestMapping(value="/mMenu03_06")
	public String mMenu03_6(){
		
		return "sub/mobileMenu03_6";
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
	
	//치료후기
	/*@RequestMapping(value="/mMenu04_04")
	public String mMenu04_4(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		List<CommentVO> list = cService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/mobileMenu04_4";
	}
	
	@RequestMapping(value="/mMenu04_04Read")
	public String mMenu04_4Read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
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
		
		return "sub/mobileMenu04_4Read";
	}*/
	
	
	public String sendSMS(Map<String, String> info){
		logger.info("sms send Post");
		System.out.println(info);
		String restxt = "";

		try{
			String txt = "제목:"+info.get("title")+"\n"+"이름:"+info.get("writer")+"\n"+"연락처:"+info.get("phone")+"\n"+"답변:"+info.get("replyType")+"\n"+"답변시간:"+info.get("replyTime")+"\n"+"작성일:"+info.get("regdate")+"\n"+info.get("content");
			final String encodingType = "utf-8";
			final String boundary = "____boundary____";
		
			/**************** 문자전송하기 예제 ******************/
			/* "result_code":결과코드,"message":결과문구, */
			/* "msg_id":메세지ID,"error_cnt":에러갯수,"success_cnt":성공갯수 */
			/* 동일내용 > 전송용 입니다.  
			/******************** 인증정보 ********************/
			String sms_url = "https://apis.aligo.in/send/"; // 전송요청 URL
			
			Map<String, String> sms = new HashMap<String, String>();
			
			sms.put("user_id", "bjj7425"); // SMS 아이디
			sms.put("key", "uybnfxh6xc0wbogbgu7nqgfnbqvx8xy8"); //인증키
			
			//1clinic 원통증 아이디
			// dxlaks0vqpw6579w9nuy20a3j1jnpj5s 원마취통증 인증키
			//uybnfxh6xc0wbogbgu7nqgfnbqvx8xy8 웹에이드 인증키
			/******************** 인증정보 ********************/
			
			/******************** 전송정보 ********************/
			sms.put("msg", txt); // 메세지 내용
			sms.put("receiver", "01052799993"); // 수신번호
			sms.put("destination", ""); // 수신인 %고객명% 치환
			sms.put("sender", ""); // 발신번호
			sms.put("rdate", ""); // 예약일자 - 20161004 : 2016-10-04일기준
			sms.put("rtime", ""); // 예약시간 - 1930 : 오후 7시30분
			sms.put("testmode_yn", "Y"); // Y 인경우 실제문자 전송X , 자동취소(환불) 처리
			sms.put("title", ""); //  LMS, MMS 제목 (미입력시 본문중 44Byte 또는 엔터 구분자 첫라인)
			
			String image = "";
			//image = "/tmp/pic_57f358af08cf7_sms_.jpg"; // MMS 이미지 파일 위치
			
			/******************** 전송정보 ********************/
			
			MultipartEntityBuilder builder = MultipartEntityBuilder.create();
			
			builder.setBoundary(boundary);
			builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
			builder.setCharset(Charset.forName(encodingType));
			
			for(Iterator<String> i = sms.keySet().iterator(); i.hasNext();){
				String key = i.next();
				builder.addTextBody(key, sms.get(key)
						, ContentType.create("Multipart/related", encodingType));
			}
			
			File imageFile = new File(image);
			if(image!=null && image.length()>0 && imageFile.exists()){
		
				builder.addPart("image",
						new FileBody(imageFile, ContentType.create("application/octet-stream"),
								URLEncoder.encode(imageFile.getName(), encodingType)));
			}
			
			HttpEntity entity = builder.build();
			
			HttpClient client = HttpClients.createDefault();
			HttpPost post = new HttpPost(sms_url);
			post.setEntity(entity);
			
			HttpResponse res = client.execute(post);
			
			String result = "";
			if(res != null){
				BufferedReader in = new BufferedReader(new InputStreamReader(res.getEntity().getContent(), encodingType));
				String buffer = null;
				while((buffer = in.readLine())!=null){
					result += buffer;
				}
				in.close();
			}
			
			if(result.contains("\"success_cnt\":1")){
				restxt = "ok";
			}else{
				restxt = "no";
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
			restxt = e.getMessage();
		}
		return restxt;
	}
}
