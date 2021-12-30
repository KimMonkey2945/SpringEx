package com.totti.ex.lesson04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NewUserController {
	
	@RequestMapping("/lesson04/ex01/1")
	public String addUserView() {
		return "lesson04/addUser";
	}
	
	
	@ResponseBody
	@RequestMapping("/lesson04/ex01/add_user")
	public String addUser(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email
			) {
		return "이름 : " +  name + "생년월일 : " + yyyymmdd + "자기소개 : " + introduce + "이메일 :" + email;
	}
	
}
