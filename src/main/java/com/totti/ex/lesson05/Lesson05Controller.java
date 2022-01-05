package com.totti.ex.lesson05;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Lesson05Controller {

	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	
	@GetMapping("lesson05/ex02")
	public String ex02(Model model) {
		//과일 이름 리스트
		List<String> fruits = new ArrayList<>();
		fruits.add("apple");
		fruits.add("banana");
		fruits.add("mango");
		fruits.add("strawberry");
		fruits.add("peach");
		
		model.addAttribute("fruits", fruits);
		
		
		//회원정보

		List<Map<String,Object>> users = new ArrayList<>();
		Map<String,Object> map = new HashMap<>();
		map.put("name", "김토티");
		map.put("age", "40");
		map.put("hobby", "축구");
		users.add(map);
		
		map = new HashMap<>();
		map.put("name", "김주닝요");
		map.put("age", "39");
		map.put("hobby", "무회전킥");
		users.add(map);
		
		model.addAttribute("users", users);
		
		
		
		return "lesson05/ex02";
	}
	
	@GetMapping("lesson05/ex03")
	public 
	
}
