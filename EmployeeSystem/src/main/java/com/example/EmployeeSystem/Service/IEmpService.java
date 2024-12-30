package com.example.EmployeeSystem.Service;

import com.example.EmployeeSystem.Entity.Employee;

import java.util.List;

public interface IEmpService {

    public Employee saveEmp(Employee emp);

    public List<Employee> getAllEmp();

    public Employee getEmpyById(int id);

    public boolean deleteEmp(int id);

}
