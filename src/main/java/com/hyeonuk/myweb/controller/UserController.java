package com.hyeonuk.myweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	//템플릿을 사용한 login 페이지
	@RequestMapping("/login")
	public String login() {
		return "user/login";
	}
	//템플릿을 사용하지 않은 login페이지(tiles 설정에 직접 경로를 적으면 템플릿이 사용되지 않는다.)
	
	@RequestMapping("/join")
	public String join() {
		return "user/join";
	}
	
}
