package com.luv2code.hibernate.demo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.luv2code.hibernate.demo.entity.Course;
import com.luv2code.hibernate.demo.entity.Instructor;
import com.luv2code.hibernate.demo.entity.InstructorDetail;
import com.luv2code.hibernate.demo.entity.Review;
import com.luv2code.hibernate.demo.entity.Student;

public class AddCoursesForMaryDemo {

	public static void main(String[] args) {
		
		// create session factory
		SessionFactory factory = new Configuration()
									.configure("hibernate.cfg.xml")
									.addAnnotatedClass(Instructor.class)
									.addAnnotatedClass(InstructorDetail.class)
									.addAnnotatedClass(Course.class)
									.addAnnotatedClass(Review.class)
									.addAnnotatedClass(Student.class)
									.buildSessionFactory();
		
		// create session
		Session session = factory.getCurrentSession();
		
		try {

			// start a transaction
			session.beginTransaction();

			// get the student mary from database
			int studentId = 2;
			Student tempStudent =  session.get(Student.class, studentId);
			System.out.println("\nLoaded student: " + tempStudent);
			System.out.println("Course: " + tempStudent.getCourses());

			// create more courses
			Course tempCours1 = new Course("Rubik's Cube - How to Speed Cube");
			Course tempCours2 = new Course("Ataria 2600 - Game Development");		

			// add student to courses
			tempCours1.addStudent(tempStudent);
			tempCours2.addStudent(tempStudent);

			// save the courses
			System.out.println("\nSaving the course ...");
			session.save(tempCours1);
			session.save(tempCours2);

			// commit transaction
			session.getTransaction().commit();
			System.out.println("Done!");

		} finally {

			// add clean up code
			session.close();

			factory.close();
		}
	}

}
