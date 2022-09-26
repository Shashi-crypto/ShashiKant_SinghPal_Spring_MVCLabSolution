package com.greatLearning.studentManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatLearning.studentManagement.entity.Student;
import com.greatLearning.studentManagement.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/list")
	public String listStudents(Model theModel) {
		List<Student> res = studentService.findAll();
		theModel.addAttribute("studentModel", res);
		return "studentlist";
	}

	@RequestMapping("/add")
	public String addStudent(Model theModel) {
		Student student = new Student();
		theModel.addAttribute("student", student);
		return "savestudent";
	}

	@RequestMapping("/update")
	public String updateStudent(@RequestParam("id") int id, Model theModel) {
		Student student = studentService.findByID(id);
		theModel.addAttribute("student", student);
		return "savestudent";
	}

	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("id") int id) {
		Student student = studentService.deleteById(id);
		System.out.println("Deleted Student Id" + student.getId());
		return "redirect:/student/list";
	}

	@PostMapping("/save")
	public String saveStudent(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("country") String country, @RequestParam("department") String department) {
		Student student;
		if (id != 0) {
			student = studentService.findByID(id);
		} else {
			student = new Student();
		}
		student.setName(name);
		student.setCountry(country);
		student.setDepartment(department);
		studentService.save(student);
		return "redirect:/student/list";
	}

}
