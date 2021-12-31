package com.totti.ex.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.totti.ex.lesson04.model.New_User;

@Repository
public interface New_UserDAO {

	
	public int insertUser(
			@Param("name") String name
			,@Param("yyyymmdd") String yyyymmdd
			,@Param("email") String email 
			,@Param("introduce") String introduce
			);
	
	
	public New_User selectUser(@Param("id") int id);
	
	
}
