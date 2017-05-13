//
//  EventAddViewController.swift
//  UITableViewCell
//
//  Created by Cntt22 on 5/13/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class EventAddViewController: UIViewController {
    

    var studentList: [Student] = []
    
    @IBOutlet weak var truong: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var dis: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        age.keyboardType = UIKeyboardType.decimalPad
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    
    @IBAction func addStudent(_ sender: UIButton) {
        if name.text!.isEmpty || truong.text!.isEmpty || age.text!.isEmpty || dis.text!.isEmpty {
            // Thong bao nhap thieu thong tin
            let alert = UIAlertController(title: "Error", message: "Missing Information!", preferredStyle: UIAlertControllerStyle.alert);
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil));
            self.present(alert, animated: true, completion: nil);
        }
        else {
            temp.check = true
            let student: Student = Student(name: name.text!, university: truong.text!, oldYear: Int(age.text!)!, description: dis.text!)
            temp.student = student
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    


}
