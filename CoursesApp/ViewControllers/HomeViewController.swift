//
//  HomeViewController.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/14/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var courses: [Courses]?
    var pagenumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        ServerManager.shared.getPaginatedCourses(pageNumber: pagenumber, completion: getCourses, error: showError)
    }
    
    func getCourses(courses: AllCoursesPaginated) {
        self.courses = courses.results
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeCell
        cell.setCell(course: courses![indexPath.item])
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
