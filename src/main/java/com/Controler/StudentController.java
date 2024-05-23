package com.Controler;
import com.DAO.StudentDAO;
import com.beans.Student;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
class StudentController {
    @Autowired
    private StudentDAO studentDAO;

    @RequestMapping(value = "/Home")
    public String Homepage(Model model){
        model.addAttribute("Student", new Student());

        return "add-students";
    }

    @RequestMapping(value = "/add-student")
    public String addStudent(Student student){
        studentDAO.addStudent(student);
        return "redirect:/display-students";
    }

    @RequestMapping("/display-students")
    public String displayStudent (Model model){
        List<Student> students = studentDAO.getStudents();
        model.addAttribute("display-students", students);
        return "display-students";
    }


    @RequestMapping("/delete-student/{id}")
    public String deleteStudent(@PathVariable("id") long id){
        studentDAO.deleteStudent(id);
        return "redirect:/display-students";
    }


    @RequestMapping(value = "/update-student")
    public String updateStudent(@RequestParam Long id, @RequestParam String name, @RequestParam String registrationNumber, @RequestParam String email) {
        studentDAO.updateStudent(id, name, registrationNumber, email);
        return "redirect:/students-list";
    }
}
