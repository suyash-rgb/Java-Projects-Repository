package com.example.EmployeeSystem.Service;

import com.example.EmployeeSystem.Entity.Employee;
import com.example.EmployeeSystem.Repository.EmpRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.List;

@Service
public class EmpService implements IEmpService{

    @Autowired
    private EmpRepository empRepo;

    @Override
    public Employee saveEmp(Employee emp) {
        Employee newEmp = empRepo.save(emp);
        return empRepo.save(emp);
    }

    public Employee updateEmp(Employee employee){
        if(employee.getId()!=0 && empRepo.existsById(employee.getId())){
            return empRepo.save(employee);
        }
        return null;
    }

    @Override
    public List<Employee> getAllEmp() {
        return empRepo.findAll();
    }

    @Override
    public Employee getEmpyById(int id) {
        return empRepo.findById(id).get();
    }

    @Override
    public boolean deleteEmp(int id) {
        Employee emp = empRepo.findById(id).get();
        if(emp!=null){
            empRepo.delete(emp);
            return true;
        }
        return false;
    }

    public void removeSessionMessage(){
        HttpSession session =((ServletRequestAttributes)(RequestContextHolder.getRequestAttributes())).getRequest().getSession();
        session.removeAttribute("msg");
    }
}
