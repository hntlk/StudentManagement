//
//  EventDetailViewController.swift
//  UITableViewCell
//
//  Created by Cntt22 on 5/13/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    var student: Student?
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var troung: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var dis: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStudent()
        age.keyboardType = UIKeyboardType.decimalPad
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    func configureStudent() {
        self.name.text = student?.name
        self.troung.text = student?.university
        self.dis.text = student?.description
        if let x = student?.oldYear {
            self.age.text = "\(x)"
        }
    }
    
    //
    @IBAction func save(_ sender: UIButton) {
        student?.name = name.text!
        student?.university = troung.text!
        student?.oldYear = Int(age.text!)!
        student?.description = dis.text!
        
        _ = navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        name.resignFirstResponder()
        troung.resignFirstResponder()
        age.resignFirstResponder()
        dis.resignFirstResponder()
        return true
    }

}
