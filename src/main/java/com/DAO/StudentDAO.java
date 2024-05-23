package com.DAO;

import com.beans.Student;

import java.util.List;

public interface StudentDAO {
    void addStudent(Student student);
    List<Student> getStudents();
    void updateStudent(Long id, String name, String registrationNumber, String email);
    void deleteStudent(Long id);
}
