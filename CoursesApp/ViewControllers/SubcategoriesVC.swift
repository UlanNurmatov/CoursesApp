//
//  SubcategoriesVC.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class SubcategoriesVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    var subcategoriesArray: [Subcategories] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func getSubcategories(subcategories: [Subcategories]) {
        subcategoriesArray = subcategories
        print(subcategoriesArray.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }
    



}
