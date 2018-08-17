//
//  CoursesTableViewCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher
import Hero

class CoursesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var courseDescription: UILabel!
    
    
    func setCourseCell(course: Courses) {
        guard let imageLogo = course.logo_image_url else {
            return
        }
        let url = URL(string: imageLogo)
        logo.kf.setImage(with: url)
        logo.roundedImage()
        logo.hero.id = "logoTrans"
        
        guard let imageCourse = course.main_image_url else {
            return
        }
        let url1 = URL(string: imageCourse)
        courseImage.kf.setImage(with: url1)
        

        
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
