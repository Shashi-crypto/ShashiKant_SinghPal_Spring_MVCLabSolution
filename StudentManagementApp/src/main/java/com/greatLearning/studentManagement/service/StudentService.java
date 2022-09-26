package com.greatLearning.studentManagement.service;

import java.util.List;

import com.greatLearning.studentManagement.entity.Student;

public interface StudentService {

	public List<Student> findAll();

	public Student findByID(int theId);

	public void save(Student thestudent);

	public Student deleteById(int theId);

	List<Student> getAllStudents();

}
