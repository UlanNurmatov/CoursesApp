//
//  CoursesUpperCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher
import Hero

class CoursesUpperCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    
    var subcategoryImage: String?
    var subcategoryTitle: String?
    
    func setCell() {

        let url = URL(string: subcategoryImage!)
        mainImage.kf.setImage(with: url)
        mainImage.hero.id = "subImage"
        
        mainTitle.text = subcategoryTitle
        
        
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
