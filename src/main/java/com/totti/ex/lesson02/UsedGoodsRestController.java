package com.totti.ex.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.totti.ex.lesson02.bo.UsedGoodsBo;
import com.totti.ex.lesson02.model.UsedGoods;


@RestController
public class UsedGoodsRestController {

	@Autowired	//이제 스프링이 관리하게 된거임...
private UsedGoodsBo usedGoodsBo;
	
	@RequestMapping("/lesson02/ex01")
	public List<UsedGoods> ex01() {
		
		return usedGoodsBo.getUsedGoodsList();
	}
	
}


//MVC구조를 머리속에 집어 넣기!!!!!