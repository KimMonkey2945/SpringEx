package com.totti.ex.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totti.ex.lesson02.dao.UsedGoodsDAO;
import com.totti.ex.lesson02.model.UsedGoods;


@Service
public class UsedGoodsBo { //비지니스 로직을 처리하는 부분...

	@Autowired	//이제 스프링이 관리하게 된거임...
	private UsedGoodsDAO usedGoodsDAO;
	
	public List<UsedGoods> getUsedGoodsList(){	
		return usedGoodsDAO.selectUsedGoodsList();
	}
	
}
