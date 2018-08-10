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
    
    
    var course: DetailedCourse?


    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    

}
