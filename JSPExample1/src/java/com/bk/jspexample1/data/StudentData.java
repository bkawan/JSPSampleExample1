/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.jspexample1.data;

import com.bk.jspexample1.entity.Student;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bkawan
 * @date Apr 28, 2016
 * @time 2:41:41 PM
 */
public class StudentData {

    public List<Student> getAll() {

        List<Student> studentList = new ArrayList<Student>();

        studentList.add(new Student(1, "Peter", "Mcdonald", "peter@gmail.com", "new york", "1232313"));
        studentList.add(new Student(2, "rocky", "lee", "rock@gmail.com", "london", "33333"));

        studentList.add(new Student(3, "bret", "lee", "bret@gmail.com", "sydeny", "555"));
        return studentList;
    }

}
