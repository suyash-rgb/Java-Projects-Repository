package com.example.EmployeeSystem.Repository;

import com.example.EmployeeSystem.Entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmpRepository extends JpaRepository<Employee, Integer> {

}
