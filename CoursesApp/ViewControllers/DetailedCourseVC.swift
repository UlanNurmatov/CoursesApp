//
//  DetailedCourseVC.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/10/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class DetailedCourseVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var serviceTitle: UILabel!
    @IBOutlet weak var serviceDescription: UILabel!
    @IBOutlet weak var servicePrice: UILabel!
    
    var course: DetailedCourse?


    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    

}
