//
//  CourseContactCell.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/11/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CourseContactCell: UITableViewCell {
    
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var phoneCall: UIButton!
    
    func setData(contact: Contact) {
        contactLabel.text = contact.contact
        if contact.type == "PHONE" {
            phoneCall.setImage(#imageLiteral(resourceName: "phone-call"), for: UIControlState.normal)
        } else {
            phoneCall.setImage(#imageLiteral(resourceName: "grid-world"), for: UIControlState.normal)
        }
    }
    
    @IBAction func callPhoneNumber() {
        guard let url = URL(string: contactLabel.text!) else {
            return
        }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url)
        } else {
            UIApplication.shared.openURL(url)
        }
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
