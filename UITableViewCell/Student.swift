//
//  ViewController.swift
//  UITableViewCell
//
//  Created by Cntt22 on 4/22/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import Foundation


class Student
{
    var name: String
    var university: String
    var oldYear: Int
    var description: String
    
    init(name: String, university: String, oldYear: Int, description: String) {
        self.name = name
        self.university = university
        self.oldYear = oldYear
        self.description = description
    }
}
