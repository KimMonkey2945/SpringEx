package com.totti.ex.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.totti.ex.lesson04.bo.New_UserBO;

@Controller
public class NewUser06Controller {

	@Autowired
	private New_UserBO newUserBO;
	
	@GetMapping("/lesson06/ex01/add_user_view")
	public String ex01() {
		return "lesson06/addUser";
	}
	
	
	
	@ResponseBody
	@PostMapping("/lesson06/ex01/add_user")
	public String ex02
	(@RequestParam("name") String name
	,@RequestParam("yyyymmdd") String yyyymmdd
	,@RequestParam("introduce") String introduce
	,@RequestParam("email") String email) {
		
	 int count=newUserBO.addUser(name, yyyymmdd, email, introduce);
	 
	 if(count == 1) {
		 return "success";
	 }else {
		 return "fail";
	 }
	 
	 
	 //	 return "삽입 성공 : " + count; 이렇게 할 필요없음.
	}
	
}
