//
//  CourseAddressCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/11/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CourseAddressCell: UITableViewCell {
    
    
    @IBOutlet weak var addressLabel: UILabel!
    
    func setData(address: Branch) {
        addressLabel.text = address.address
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
