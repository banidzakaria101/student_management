package com.Controler;
import com.DAO.StudentDAO;
import com.beans.Student;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;



@Controller
class StudentController {
    @Autowired
    private StudentDAO studentDAO;

    @RequestMapping(value = "/")
    public String Homepage(Model model){
        model.addAttribute("Student", new Student());

        return "students";
    }

    @RequestMapping(value = "/add-student")
    public String addStudent(Student student){
        studentDAO.AddStudent(student);
        return "redirect: /students-list";
    }

    @RequestMapping("/display-students")
    public String displayStudent (Model model){
        model.addAttribute("student", studentDAO.getStudents());
        return "students";
    }


    @RequestMapping("/delete-student/{id}")
    public String deleteStudent(@PathVariable("id") long id){
        studentDAO.DeleteStudent(id);
        return "redirect: /students-list";
    }



}
