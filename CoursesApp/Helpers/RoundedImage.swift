//
//  RoundedImage.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/13/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}
