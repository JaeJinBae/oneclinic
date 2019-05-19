package com.webaid.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

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
	
	@RequestMapping(value="/menu04_04")
	public String menu04_4(){
		
		return "sub/menu04_4";
	}
	
	@RequestMapping(value="/menu04_05")
	public String menu04_5(){
		
		return "sub/menu04_5";
	}
}
