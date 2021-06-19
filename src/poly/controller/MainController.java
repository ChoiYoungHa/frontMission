package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

	private Logger log = Logger.getLogger(this.getClass());

	@RequestMapping(value = "index")
	public String Index() {
		log.info(this.getClass());

		return "/index";
	}

	@RequestMapping(value = "/user/login")
	public String login(HttpServletRequest request) {
		return "/user/login";
	}

	@RequestMapping(value = "/user/signup")
	public String signUp(){
		return "/user/signup";
	}

	@RequestMapping(value="/user/findpw")
	public String findPw() { return "/user/findpw"; }

	@RequestMapping(value="/user/findid")
	public String findId() { return "/user/findid"; }
}
