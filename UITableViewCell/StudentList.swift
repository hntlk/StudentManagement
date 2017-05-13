//
//  ViewController.swift
//  UITableViewCell
//
//  Created by Cntt22 on 4/22/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import Foundation
class StudentList {
    
    init() {
    }
    
    public class func getStudentList() -> [Student] {
        var students = [Student]()
        
        students.append(Student(name: "Huynh Nhat Tai", university: "HCMUTE", oldYear: 24, description: "13110141"))
        students.append(Student(name: "Truong Thanh Long", university: "HCMUTE", oldYear: 24, description: "13110441"))
        students.append(Student(name: "Tran Quang Sang", university: "HCMUTE", oldYear: 24, description: "1311000"))
        students.append(Student(name: "Mac Be Tong", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Huynh Hieu Minh", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Lonh Nhat Phung", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Truong Tam Phong", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Truong Vo ky", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Ta Ton", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Man Man", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Dac Moc Nhi", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Cang Long", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Quang Trung", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Nguyen Hung", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Thanh Long", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Ngo Tat To", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Tu Xuong", university: "HCMUTE", oldYear: 24, description: "Description"))
        students.append(Student(name: "Han Long", university: "HCMUTE", oldYear: 24, description: "Description"))
        
        return students
    }
}
