package com.example.springboot.dao;

import java.util.List;

import com.example.springboot.entity.Employee;

public interface EmployeeDAO {

	public List<Employee> findAll();

}
