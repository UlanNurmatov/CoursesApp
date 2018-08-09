//
//  CoursesTableViewCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {
    
    let mainImage: String? = ""
    let mainTitle: String? = ""
    
    @IBOutlet weak var subcategoryImage: UIImageView!
    @IBOutlet weak var subcategoryLabel: UILabel!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var courseDescription: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
