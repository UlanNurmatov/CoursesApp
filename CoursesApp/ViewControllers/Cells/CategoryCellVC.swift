//
//  CategoryCellVC.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/8/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class CategoryCellVC: UICollectionViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func setCategoryCell(category: Category) {
        guard let image = category.category_image_url else {
            return
        }
        let url = URL(string: image)
        categoryImage.kf.setImage(with: url)
        
        categoryTitle.text = category.title
    }
}
