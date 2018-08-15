//
//  DetailedUpperCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/11/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class DetailedUpperCell: UITableViewCell {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var courseTitle: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var servicesButton: UIButton!
    @IBOutlet weak var contactsButton: UIButton!
    @IBOutlet weak var addressButton: UIButton!
    @IBOutlet weak var actionsButton: UIButton!

    
    
    var delegate: CourseTypeDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func buttonTapped(button: UIButton) {
        let type = CourseInfoType(rawValue: button.tag)
        delegate?.setCourseType(type: type!)
    }

    
    
    
    func setUpperDetailedCell(course: DetailedCourse, currentType: CourseInfoType) {
        let url1 = URL(string: course.logo_image_url!)
        logo.kf.setImage(with: url1)
        logo.roundedImage()
        
        let url2 = URL(string: course.main_image_url!)
        mainImage.kf.setImage(with: url2)
        
        courseTitle.text = course.title
        
        if currentType == .info {
            infoButton.setImage(#imageLiteral(resourceName: "info-enabled-1"), for: UIControlState.normal)
        } else {
            infoButton.setImage(#imageLiteral(resourceName: "info"), for: UIControlState.normal)
        }
        if currentType == .services {
            servicesButton.setImage(#imageLiteral(resourceName: "info-2"), for: UIControlState.normal)
        } else {
            infoButton.setImage(#imageLiteral(resourceName: "info"), for: UIControlState.normal)
        }
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
