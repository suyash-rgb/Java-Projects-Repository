package com.example.EmployeeSystem.Controller;


import com.example.EmployeeSystem.Entity.Employee;
import com.example.EmployeeSystem.Service.EmpService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private EmpService empService;


    @GetMapping("/")
    public String index(Model m){
        List<Employee> empList = empService.getAllEmp();
        m.addAttribute("empList", empList);
        return "index";
    }

    @GetMapping("/loadEmpSave")
    public String loadEmpSave(){
        return "emp_save";
    }

    @GetMapping("/EditEmp/{id}")
    public String EditEmp(@PathVariable int id, Model m){
        System.out.println(id);
        Employee emp = empService.getEmpyById(id);
        m.addAttribute("emp", emp);
        return "edit_emp";
    }

    @PostMapping("/saveEmp")
    public String saveEmp(@ModelAttribute Employee emp, HttpSession session){
        System.out.println("Before saving: " + emp);

        Employee savedEmp;
        if (emp.getId() != 0) {
            // Update existing employee
            savedEmp = empService.updateEmp(emp);
            if (savedEmp != null) {
                session.setAttribute("msg", "Employee updated successfully!");
            } else {
                session.setAttribute("msg", "Something went wrong while updating the employee.");
            }
        } else {
            // Create new employee
            savedEmp = empService.saveEmp(emp);
            if (savedEmp != null) {
                session.setAttribute("msg", "Employee registered successfully!");
            } else {
                session.setAttribute("msg", "Something went wrong while registering the employee.");
            }
        }

        System.out.println("After saving: " + savedEmp);
        return "redirect:/loadEmpSave";
    }

    @GetMapping("/deleteEmp/{id}")
    public String deleteEmp(@PathVariable int id, HttpSession session){
        boolean f = empService.deleteEmp(id);
        if(f){
           session.setAttribute("msg","Deleted Successfully");
        }
        else{
            session.setAttribute("msg", "Something went wrong");
        }
        return "redirect:/";
    }

}
