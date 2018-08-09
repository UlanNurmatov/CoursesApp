//
//  CoursesVC.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CoursesVC: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mainImage: String? = ""
    var mainTitle: String? = ""
    
    var coursesArray: [Courses] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 200
      
    }
    
    func getCourses(courses: [Courses]) {
        coursesArray = courses
        tableView.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return coursesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
             let cell = tableView.dequeueReusableCell(withIdentifier: "UpperCell", for: indexPath) as! CoursesUpperCell
            cell.subcategoryImage = mainImage
            cell.subcategoryTitle = mainTitle
            cell.setCell()
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoursesCell", for: indexPath) as! CoursesTableViewCell
        cell.setCourseCell(course: coursesArray[indexPath.item])
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    

}
