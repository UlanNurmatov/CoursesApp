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
    var currentType : CourseInfoType = .info
    var id: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.estimatedRowHeight = 130
        tableView.tableFooterView = UIView()
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
        if currentType == .address {
            return course!.branches!.count
        }
        if currentType == .services {
            return course!.services!.count
        }
        if currentType == .actions {
            return course!.actions!.count
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
        
        if currentType == .address {
            let cell = tableView.dequeueReusableCell(withIdentifier: "addressCell", for: indexPath) as!  CourseAddressCell
            cell.setData(address: course!.branches![indexPath.item])
            return cell
        }
        
        if currentType == .info {
            let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath) as!  CourseInfoCell
            cell.setData(info: course!)
            return cell
        }
        
        if currentType == .services {
            let cell = tableView.dequeueReusableCell(withIdentifier: "servicesCell", for: indexPath) as!  CourseServicesCell
            cell.setData(service: course!.services![indexPath.item])
            return cell
        }
        if currentType == .actions {
            let cell = tableView.dequeueReusableCell(withIdentifier: "actionsCell", for: indexPath) as!  CourseActionsCell
            cell.setData(action: course!.actions![indexPath.item])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 390
        } else {
            return UITableViewAutomaticDimension
        }
    }
    }
    


