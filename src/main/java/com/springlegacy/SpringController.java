package com.springlegacy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringController {
	
	@RequestMapping("/home")
	public ModelAndView get() {
		return new ModelAndView("home", "message", "welcome");
	}	
}
