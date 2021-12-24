package com.totti.ex.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex02Controller {

	@RequestMapping("/lesson01/ex02/1")
	public String view() {
		return "lesson01/ex02";
	}
	
}
