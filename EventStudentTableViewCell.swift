//
//  EventStudentTableViewCell.swift
//  UITableViewCell
//
//  Created by Cntt22 on 5/13/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class EventStudentTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var truong: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureStudentViewCell(student: Student) {
        self.name.text = student.name
        self.truong.text = student.university
    }
}
