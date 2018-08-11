//
//  DetailedCourseVC.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/10/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class DetailedCourseVC: UIViewController, UITableViewDataSource, UITableViewDelegate, CourseTypeDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var course: DetailedCourse?
    var currentType : CourseInfoType = .contacts
    var id: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        ServerManager.shared.getCourse(courseId: id, completion: getCourse, error: showError)
    }
    
    func getCourse(course: DetailedCourse) {
        self.course = course
        tableView.reloadData()
    }
    
    func setCourseType(type: CourseInfoType) {
        currentType = type
        print(type)
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if course == nil {
            return 0
        }
        if section == 0 {
            return 1
        }
        if currentType == .contacts {
            return course!.contacts!.count
        }
        if currentType == .info {
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedUpper", for: indexPath) as! DetailedUpperCell
            cell.delegate = self
            cell.setUpperDetailedCell(course: course!)
            return cell
        }
        if currentType == .contacts {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as!  CourseContactCell
            cell.setData(contact: course!.contacts![indexPath.item])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 300
        } else {
            return 50
        }
    }
    
    
}

