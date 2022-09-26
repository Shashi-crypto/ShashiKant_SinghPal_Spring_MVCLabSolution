package com.greatLearning.studentManagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greatLearning.studentManagement.entity.Student;

@Repository
public class StudentServiceImpl implements StudentService {

	private SessionFactory sessionFactory;

	// create Session
	private Session session;

	@Autowired
	StudentServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			this.session = sessionFactory.openSession();

		}

	}

	@Transactional
	public Student findByID(int theId) {
		Student student = new Student();

		Transaction tx = session.beginTransaction();

		student = session.get(Student.class, theId);

		tx.commit();

		return student;
	}

	@Transactional
	public void save(Student thestudent) {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(thestudent);
		tx.commit();

	}

	@Transactional
	public Student deleteById(int theId) {
		Transaction tx = session.beginTransaction();

		Student student = session.get(Student.class, theId);

		session.delete(student);

		tx.commit();
		return student;

	}

	@Override
	@Transactional
	public List<Student> findAll() {
		@SuppressWarnings({ "unchecked" })
		List<Student> students = (List<Student>) session.createQuery("from Student").list();
		return students;
	}

	@Override
	@Transactional
	public List<Student> getAllStudents() {
		@SuppressWarnings("unchecked")
		List<Student> list = (List<Student>) session.createQuery("from Student").list();
		return list;
	}

}
