package com.totti.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.totti.ex.lesson04.bo.New_UserBO;
import com.totti.ex.lesson04.model.New_User;


@RequestMapping("/lesson04")
@Controller
public class NewUserController {
	
	@Autowired
	private New_UserBO newUserBO;
	
	@RequestMapping("/ex01/1")
	public String addUserView() {
		return "lesson04/addUser";
	}
	
	//insert는 입력행의 성공 숫자가 나타남....
	@ResponseBody
	@RequestMapping("/ex01/add_user")
	public String addUser(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email
			) {
		
	int count =	newUserBO.addUser(name, yyyymmdd, email, introduce);
		
		return "입력 성공 : " + count;
	}
	
	
	@RequestMapping("/ex01/2")
	public String getUser(Model model) {
		New_User user = newUserBO.getUser(3);
		
		model.addAttribute("result", user);   //모델에 세팅하는법 키는 내가 정하면됨.... 사용법임...
		model.addAttribute("subject", "회원정보");
		
		
		return "lesson04/userInfo";
	}
}
