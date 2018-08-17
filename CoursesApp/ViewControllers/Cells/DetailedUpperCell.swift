//
//  DetailedUpperCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/11/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher
import Hero

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
        //logo.hero.id = "logoTrans"
       // logo.hero.modifiers = [.arc]
        
        let url2 = URL(string: course.main_image_url!)
        mainImage.kf.setImage(with: url2)
        
        courseTitle.text = course.title
        
        if currentType == .info {
            infoButton.setImage(#imageLiteral(resourceName: "info-enabled"), for: UIControlState.normal)
        } else {
            infoButton.setImage(#imageLiteral(resourceName: "info-disabled"), for: UIControlState.normal)
        }
        if currentType == .services {
            servicesButton.setImage(#imageLiteral(resourceName: "services-enabled"), for: UIControlState.normal)
        } else {
            servicesButton.setImage(#imageLiteral(resourceName: "services-disabled"), for: UIControlState.normal)
        }
        if currentType == .contacts {
            contactsButton.setImage(#imageLiteral(resourceName: "contact-enabled"), for: UIControlState.normal)
        } else {
            contactsButton.setImage(#imageLiteral(resourceName: "contact-disabled"), for: UIControlState.normal)
        }
        if currentType == .address {
            addressButton.setImage(#imageLiteral(resourceName: "location-enabled"), for: UIControlState.normal)
        } else {
            addressButton.setImage(#imageLiteral(resourceName: "location-disabled"), for: UIControlState.normal)
        }
        if currentType == .actions {
            actionsButton.setImage(#imageLiteral(resourceName: "announce-enabled"), for: UIControlState.normal)
        } else {
            actionsButton.setImage(#imageLiteral(resourceName: "announce-disabled"), for: UIControlState.normal)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
