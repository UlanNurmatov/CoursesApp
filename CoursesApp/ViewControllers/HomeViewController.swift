//
//  HomeViewController.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/14/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var courses: [Courses] = []
    var pagenumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        ServerManager.shared.getPaginatedCourses(pageNumber: pagenumber, completion: getCourses, error: showError)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
      
    }
    
    func getCourses(courses: AllCoursesPaginated) {
        self.courses.append(contentsOf: courses.results!)
        self.pagenumber = pagenumber + 1
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == courses.count - 1 {
            // load more data
            ServerManager.shared.getPaginatedCourses(pageNumber: pagenumber + 1, completion: getCourses, error: showError)
            
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeCell
        cell.setCell(course: courses[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
