//
//  ViewController.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCategories(completion: printCategories, error: showError)
        ServerManager.shared.getSubcategories(categoryId: 4, completion: printSubcategories, error: showError)
    }
    
    func printCategories(categories: [Categories]) {
        for i in categories {
            print(i.title!)
        }
    }
    
    func printSubcategories(subcategories: [Subcategories]) {
        for i in subcategories {
            print(i.title!)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

