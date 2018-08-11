//
//  CourseInfoCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/11/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CourseInfoCell: UITableViewCell {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    func setData(info: DetailedCourse) {
        infoLabel.text = info.description
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
