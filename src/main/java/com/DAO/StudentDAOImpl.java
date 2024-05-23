package com.DAO;

import com.beans.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentDAOImpl implements StudentDAO {
    private static List<Student> students = new ArrayList<>();

    @Override
    public void addStudent(Student student) {
        students.add(student);
    }

    @Override
    public List<Student> getStudents() {
        System.out.println(students);
        return students;
    }

    @Override
    public void updateStudent(Long id, String name, String registrationNumber, String email) {
        for (Student student : students) {
            if (student.getId().equals(id)) {
                student.setName(name);
                student.setRegistrationNumber(registrationNumber);
                student.setEmail(email);
            }
        }
    }

    @Override
    public void deleteStudent(Long id) {
        students.removeIf(student -> student.getId().equals(id));
    }
}
