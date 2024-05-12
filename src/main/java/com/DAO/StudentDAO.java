package com.DAO;

import com.beans.Student;

import java.util.ArrayList;

public interface StudentDAO {
    void AddStudent(Student student);
    ArrayList<Student> getStudents();
    void UpdateStudent(Long id, String name, String registrationNumber, String email);
    void DeleteStudent(Long id);
}
