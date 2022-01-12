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
	
	//여기서는 불린이 아님 쿼리 입장에서는 중복되는 개수가 몇개인지 알려주는 것임.
	//명확하게 할일을 구분해주는 것임
	public int selectCountName(@Param("name") String name);
	
}
