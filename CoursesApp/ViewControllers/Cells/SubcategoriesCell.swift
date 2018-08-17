//
//  SubcategoriesCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher
import Hero

class SubcategoriesCell: UICollectionViewCell {
    @IBOutlet weak var subImage: UIImageView!
    @IBOutlet weak var subTitle: UILabel!
    
    func setSubcategoryCell(subcategory: Subcategories) {
        guard let image = subcategory.subcategory_image_url else {
            return
        }
        let url = URL(string: image)
        subImage.kf.setImage(with: url)
        subImage.hero.id = "subImage"
        
        subTitle.text = subcategory.title
    }
}
