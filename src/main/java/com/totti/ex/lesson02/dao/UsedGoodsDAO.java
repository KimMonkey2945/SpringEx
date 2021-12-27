package com.totti.ex.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.totti.ex.lesson02.model.UsedGoods;

@Repository
//컨트롤러와 다오는 심플하게 만드는 것임 다 비오로 보낼 것.
public interface UsedGoodsDAO {

	public List<UsedGoods> selectUsedGoodsList();
}
