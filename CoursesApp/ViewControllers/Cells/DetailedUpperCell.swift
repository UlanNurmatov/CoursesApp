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
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func infoButtonTapped() {
        
    }
    
    @IBAction func contactButtonTapped() {
        
    }
    
    @IBAction func addressButtonTapped() {
        
    }
    
    @IBAction func ServicesButtonTapped() {
        
    }
    
    @IBAction func actionsButtonTapped() {
        
    }
    
    
    
    func setUpperDetailedCell(course: DetailedCourse) {
        let url1 = URL(string: course.logo_image_url!)
        logo.kf.setImage(with: url1)
        
        let url2 = URL(string: course.main_image_url!)
        mainImage.kf.setImage(with: url2)
        
        courseTitle.text = course.title
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
