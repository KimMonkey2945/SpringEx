package com.totti.ex.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totti.ex.lesson04.dao.New_UserDAO;
import com.totti.ex.lesson04.model.New_User;

@Service
public class New_UserBO {
	
	@Autowired
	private New_UserDAO newUserDAO;
	
	public int addUser(String name, String yyyymmdd, String eamil, String introduce) {
		return newUserDAO.insertUser(name, yyyymmdd, eamil, introduce);
	}
	
	public New_User getUser(int id) {
		return newUserDAO.selectUser(id);
	}
}
