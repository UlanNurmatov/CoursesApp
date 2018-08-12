//
//  CourseActionsCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/13/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class CourseActionsCell: UITableViewCell {
    
    @IBOutlet weak var actionTitle: UILabel!
    @IBOutlet weak var actionDescription: UILabel!
    @IBOutlet weak var actionDate: UILabel!
    @IBOutlet weak var actionImage: UIImageView!
    
    
    func setData(action: Action) {
        actionTitle.text = action.title
        actionDescription.text = action.description
        actionDate.text = action.end_date
        
        let url = URL(string: action.action_image!)
        actionImage.kf.setImage(with: url)
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
