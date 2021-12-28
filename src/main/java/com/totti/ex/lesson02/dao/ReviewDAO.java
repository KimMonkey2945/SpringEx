package com.totti.ex.lesson02.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.totti.ex.lesson02.model.Review;

@Repository
public interface ReviewDAO {

	public Review selectReview(@Param("id")int id);
}
