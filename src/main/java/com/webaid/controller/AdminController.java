package com.webaid.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.NewsVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.AdviceService;
import com.webaid.service.CommentService;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;

@Controller
@RequestMapping("/admin/*")
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
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest req){
		session.invalidate();
		session = req.getSession(false);
		System.out.println(session);
		return "redirect:/admin/adminLogin";
	}

	@RequestMapping(value = "/adminIdPwChk", method = RequestMethod.POST)
	public ResponseEntity<String> adminIdPwChk(@RequestBody Map<String, String> info, HttpSession session) throws Exception {
		ResponseEntity<String> entity = null;
		if(info.get("id").equals("admin") && info.get("pw").equals("one2697575")){
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			session.setAttribute("id", "admin");
		}else{
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	public String adminMain(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("admin main get");
		
		HttpSession session = req.getSession(false);
		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}
		List<NoticeVO> list = nService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminNotice";
	}
	
	@RequestMapping(value = "/adminNotice")
	public String adminNotice(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminNotice GET");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		List<NoticeVO> list = nService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNotice";
	}

	@RequestMapping(value = "/adminNoticeRead", method = RequestMethod.GET)
	public String adminNoticeRead(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNoticeRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		NoticeVO vo = nService.selectOne(no);
		nService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminNoticeRead";
	}

	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.GET)
	public String adminNoticeRegisterGet(HttpServletRequest req) {
		logger.info("adminNoticeRegister Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		return "admin/adminNoticeRegister";
	}

	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.POST)
	public String adminNoticeRegisterPost(NoticeVO vo, HttpServletRequest req) {
		logger.info("adminNoticeRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}
		Calendar now = Calendar.getInstance();
		String nowYear = now.get(Calendar.YEAR)+"";
		String nowMonth = ((now.get(Calendar.MONTH)+1)<10)?"0"+(now.get(Calendar.MONTH)+1):(now.get(Calendar.MONTH)+1)+"";
		String nowDate = ((now.get(Calendar.DATE))<10)?"0"+(now.get(Calendar.DATE)):(now.get(Calendar.DATE))+"";
		vo.setRegdate(nowYear+"-"+nowMonth+"-"+nowDate);
		System.out.println(vo);
		//nService.insert(vo);

		return "redirect:/admin/adminNotice";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.GET)
	public String adminNoticeUpdateGet(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNoticeUpdate get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		NoticeVO vo = nService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNoticeUpdate";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.POST)
	public String modifyPost(NoticeVO vo, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts,
			Model model, HttpServletRequest req) throws Exception {
		logger.info("adminNoticeUpdate post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		nService.update(vo);

		rtts.addAttribute("bno", vo.getNo());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);

		pageMaker.setTotalCount(nService.listSearchCount(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/adminNoticeRead";
	}

	@RequestMapping(value = "/adminNoticeDelete", method = RequestMethod.GET)
	public String adminNoticeDelete(int no, SearchCriteria cri, RedirectAttributes rtts, HttpServletRequest req)
			throws Exception {
		logger.info("delete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		nService.delete(no);// 게시글, 파일 삭제
		rtts.addAttribute("perPageNum", cri.getPerPageNum());
		rtts.addAttribute("page", cri.getPage());

		return "redirect:/admin/adminNotice";
	}

	@RequestMapping(value = "/adminNews")
	public String news(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminNews get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		List<NewsVO> list = newsService.listSearch(cri);

		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNews";
	}

	@RequestMapping(value = "/adminNewsRead", method = RequestMethod.GET)
	public String readNews(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNewsRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		NewsVO vo = newsService.selectOne(no);
		newsService.updateCnt(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminNewsRead";
	}

	@RequestMapping(value = "/adminNewsRegister", method = RequestMethod.GET)
	public String adminNewsRegisterGet(HttpServletRequest req) {
		logger.info("adminNewsRegister Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		return "admin/adminNewsRegister";
	}

	@RequestMapping(value = "/adminNewsRegister", method = RequestMethod.POST)
	public String adminNewsRegisterPost(NewsVO vo, HttpServletRequest req) {
		logger.info("adminNewsRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		newsService.insert(vo);

		return "redirect:/admin/adminNews";
	}

	@RequestMapping(value = "/adminNewsUpdate", method = RequestMethod.GET)
	public String adminNewsUpdateGet(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNewsUpdate get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		NewsVO vo = newsService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNewsUpdate";
	}

	@RequestMapping(value = "/adminNewsUpdate", method = RequestMethod.POST)
	public String modifyPost(NewsVO vo, int page, @ModelAttribute("cri") SearchCriteria cri,
			RedirectAttributes rtts, Model model, HttpServletRequest req) throws Exception {
		logger.info("adminNewsUpdate post");

		logger.info("page: " + page);

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		newsService.update(vo);

		rtts.addAttribute("bno", vo.getNo());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);

		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/adminNewsRead";
	}

	@RequestMapping(value = "/adminNewsDelete", method = RequestMethod.GET)
	public String adminNewsDelete(int no, SearchCriteria cri, RedirectAttributes rtts, HttpServletRequest req)
			throws Exception {
		logger.info("adminNewsDelete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		newsService.delete(no);// 게시글, 파일 삭제
		rtts.addAttribute("perPageNum", cri.getPerPageNum());
		rtts.addAttribute("page", cri.getPage());

		return "redirect:/admin/adminNews";
	}

	@RequestMapping(value = "/adminAdvice", method = RequestMethod.GET)
	public String advice(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("advice get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		List<AdviceVO> list = aService.listSearch(cri);

		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdvice";
	}

	@RequestMapping(value = "/adminAdviceRead", method = RequestMethod.GET)
	public String adminAdviceRead(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		AdviceVO vo = aService.selectOne(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminAdviceRead";
	}
	
	@RequestMapping(value = "/adminAdviceReplyRegister", method = RequestMethod.POST)
	public String adminAdviceReplyRegister(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceReplyRegister");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}
		
		aService.updateReply(vo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdviceRead" + pageMaker.makeSearch(cri.getPage()) + "&no=" + vo.getNo();
	}
	
	@RequestMapping(value = "/adminAdviceReplyUpdate", method = RequestMethod.GET)
	public String adminAdviceReplyUpdateGET(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceReplyUpdateGET");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		AdviceVO vo = aService.selectOne(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdviceReplyUpdate";
	}
	
	/*@RequestMapping(value = "/adminAdviceReplyUpdate", method = RequestMethod.POST)
	public String adminAdviceReplyUpdatePost(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceReplyPost");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		aService.updateReply(vo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdviceRead" + pageMaker.makeSearch(cri.getPage()) + "&no=" + vo.getNo();
	}*/
	
	@RequestMapping(value = "/adminAdviceUpdate", method = RequestMethod.GET)
	public String adminAdviceUpdateGet(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceUpdate Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		AdviceVO vo = aService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdviceUpdate";
	}

	@RequestMapping(value = "/adminAdviceUpdate", method = RequestMethod.POST)
	public String adminAdviceUpdatePost(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdvicePost");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		aService.update(vo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdviceRead" + pageMaker.makeSearch(cri.getPage()) + "&no=" + vo.getNo();
	}

	@RequestMapping(value = "/adminAdviceDelete")
	public String adminAdviceDelete(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceDelete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "redirect:/admin/adminLogin";
		}

		aService.delete(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdvice" + pageMaker.makeSearch(cri.getPage());
	}

	@ResponseBody
	@RequestMapping("/imgUpload")
	public Map<String, Object> imgaeUpload(HttpServletRequest req, @RequestParam MultipartFile upload, Model model)
			throws Exception {
		logger.info("image upload!!!!!");

		// http body
		OutputStream out = null;

		Map<String, Object> map = new HashMap<String, Object>();

		// 오리지날 파일명
		String originalName = upload.getOriginalFilename();

		// 랜덤이름 생성(중복 방지용)
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;

		// 업로드한 파일 이름
		String fileName = savedName;

		// 바이트 배열로 변환
		byte[] bytes = upload.getBytes();

		// 이미지를 업로드할 디렉토리(배포경로로 설정)
		String innerUploadPath = "resources/upload/";
		String uploadPath = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		logger.info(uploadPath);

		out = new FileOutputStream(new File(uploadPath + fileName));// 서버에 파일 저장
		// 서버에 저장됨
		out.write(bytes);

		String fileUrl = "/" + innerUploadPath + fileName;

		System.out.println(fileUrl);

		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", fileUrl);

		return map;
	}
}
