package com.totti.ex.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.totti.ex.lesson04.model.NewStudent;

@Repository
public interface NewStudentDAO {

		public int insertStudent(NewStudent student);
	
	
}
