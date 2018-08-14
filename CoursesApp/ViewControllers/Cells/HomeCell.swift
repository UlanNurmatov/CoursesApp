//
//  HomeCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/14/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class HomeCell: UITableViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var courseDescription: UILabel!
    
    func setCell(course: Courses) {
        let url = URL(string: course.main_image_url!)
        mainImage.kf.setImage(with: url)
        
        let url2 = URL(string: course.logo_image_url!)
        logo.kf.setImage(with: url2)
        
        courseTitle.text = course.title
        courseDescription.text = course.description
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
