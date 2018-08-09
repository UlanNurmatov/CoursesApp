//
//  SubcategoriesVC.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class SubcategoriesVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!

    var subcategoriesArray: [Subcategories] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    func getSubcategories(subcategories: [Subcategories]) {
        subcategoriesArray = subcategories
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subcategoriesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubcategoryCell", for: indexPath) as! SubcategoriesCell
        cell.setSubcategoryCell(subcategory: subcategoriesArray[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "Courses") as! CoursesVC
        let id = subcategoriesArray[indexPath.item].id!
        let subcategoryImage = subcategoriesArray[indexPath.item].subcategory_image_url
        let subcategoryTitle = subcategoriesArray[indexPath.item].title
        vc.mainImage = subcategoryImage
        vc.mainTitle = subcategoryTitle
        ServerManager.shared.getCourses(categoryId: id, completion: vc.getCourses, error: showError)
        show(vc, sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }
    



}
