package com.totti.ex.lesson02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.totti.ex.lesson02.bo.ReviewBO;
import com.totti.ex.lesson02.model.Review;

@RestController
public class ReviewController {

	@Autowired
	private ReviewBO reviewBO;

	// 리스트는 여러개일때 감쌀 때 사용... 그냥 클래스 이름을 사용
	@RequestMapping("/lesson03/ex01")
	public Review ex01(
//			기본형태
			@RequestParam("id") int id
//			@RequestParam("id") int id, @RequestParam("name") String name 이렇게 여러개 가능
//			@RequestParam(value="id", required = false, defaultValue="5") int id 
//			기본이 필수 true로 저장되어있음.

	) {
		return reviewBO.getReview(id);
	}
	
	@RequestMapping("/lesson03/ex02")
	public String ex02() {
		//4, "콤비네이션피자", "김바다", 4.5, "할인도 많이 받고 잘 먹었습니다!!"  이 내용을 insert
//		int count = reviewBO.addReview(4, "콤비네이션피자", "김바다", 4.5, "할인도 많이 받고 잘 먹었습니다.");
		
		Review review = new Review();
		review.setStoreId(4);
		review.setMenu("콤비네이션 피자");
		review.setUserName("김바다");
		review.setPoint(4.5);
		review.setReview("222222222");
		int count = reviewBO.addReviewAsObject(review);
		
		return "입력 결과" + count;
	}
	

}
