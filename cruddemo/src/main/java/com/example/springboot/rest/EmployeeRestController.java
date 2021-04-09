package com.example.springboot.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.springboot.dao.EmployeeDAO;
import com.example.springboot.entity.Employee;

@RestController
@RequestMapping("/api")
public class EmployeeRestController {

	private EmployeeDAO employeeDAO;

	@Autowired
	public EmployeeRestController(EmployeeDAO theEmployeeDAO) {

		employeeDAO = theEmployeeDAO;
	}

	@GetMapping("/employees")
	public List<Employee> findAll() {

		return employeeDAO.findAll();
	}

}
