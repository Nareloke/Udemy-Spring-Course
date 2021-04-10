package com.example.springboot.thymeleafdemo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.springboot.thymeleafdemo.model.Employee;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

	// load employee data
	private List<Employee> theEmployee;

	@PostConstruct
	private void loadData() {

		// create employee
		Employee emp1 = new Employee(1, "Leslie", "Andrews", "leslie@gmail.com");
		Employee emp2 = new Employee(2, "Emma", "Baumgarten", "emma@gmail.com");
		Employee emp3 = new Employee(3, "Avani", "Gupta", "avani@gmail.com");

		// create the list
		theEmployee = new ArrayList<>();

		// add to the list
		theEmployee.add(emp1);
		theEmployee.add(emp2);
		theEmployee.add(emp3);
	}

	// add mapping for "/list"

}
