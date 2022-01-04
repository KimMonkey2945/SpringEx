package com.totti.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.totti.ex.lesson04.bo.NewStudentBO;
import com.totti.ex.lesson04.model.NewStudent;

@Controller
public class NewStudentController {
	
	@Autowired
	private NewStudentBO newStudentBO;
	
	@RequestMapping("/lesson04/ex02/1")
	public String addStudentView() {
		return "lesson04/addStudent";
	}
	
//	@ResponseBody
//	@RequestMapping(path = "/lesson04/ex02/ass_student" , method = RequestMethod.post)
//	@GetMapping("/lesson04/ex02/add_student")
	//post는 일반적으로 주소창에 입력해서 접근이 안되는 것임....
	@PostMapping("/lesson04/ex02/add_student")
	public String addStudent(@ModelAttribute NewStudent student,
			Model model) {

		int count = newStudentBO.addStudent(student);
//		return "입력성공 : " + count;
			
			model.addAttribute("result", student);
			return "lesson04/studentInfo";
			
	}
	
}
