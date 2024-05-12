package com.DAO;

import com.beans.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class StudentDAOImpl implements StudentDAO{
    private static ArrayList<Student> students = new ArrayList<Student>();


    @Override
    public void AddStudent(Student student){
        students.add(student);
    }

    @Override
    public ArrayList<Student> getStudents() {
        System.out.println(students);
        return students;
    }

    @Override
    public void UpdateStudent(Long id, String name, String registrationNumber, String email) {
        for(Student student : students){
            if(student.getId().equals(id)){
                student.setName(name);
                student.setEmail(email);
                student.setRegistrationNumber(registrationNumber);
            }
        }

    }

    @Override
    public void DeleteStudent(Long id) {
        students.removeIf(student -> student.getId().equals(id));

    }


}
