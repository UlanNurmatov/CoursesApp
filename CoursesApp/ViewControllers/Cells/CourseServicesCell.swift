//
//  CourseServicesCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/11/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CourseServicesCell: UITableViewCell {
    
    @IBOutlet weak var serviceTitle: UILabel!
    @IBOutlet weak var serviceDescription: UILabel!
    @IBOutlet weak var servicePrice: UILabel!

    
    func setData(service: Service) {
        serviceTitle.text = service.title
        serviceDescription.text = service.description
        servicePrice.text = ("Цена: \(service.price ?? "Не определена")")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
