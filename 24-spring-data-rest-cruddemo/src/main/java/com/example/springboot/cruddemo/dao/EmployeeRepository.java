package com.example.springboot.cruddemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.springboot.cruddemo.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	// that's it! No need to write any code
}
