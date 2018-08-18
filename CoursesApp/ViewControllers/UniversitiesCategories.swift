//
//  UniversitiesCategories.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/18/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class UniversitiesCategories: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let cellInset: CGFloat = 10
    var categories: [Category] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        ServerManager.shared.getUnivCategories(completion: setCategories, error: showError)
    }
    
    func setCategories(categories: [Category]) {
        self.categories = categories
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: cellInset, left: cellInset, bottom: cellInset, right: cellInset)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.frame.width - (3.0 * cellInset)) / 2.0
        
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    //    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
    //        var cellWidth = (Int(collectionView.frame.width) - (3 * cellInset)) / 2
    //
    //        return CGSize(width: cellWidth, height: cellWidth)
    //    }
    //
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UnivCategoriesCell", for: indexPath) as! UnivCategoriesCell
        cell.setCategoryCell(category: categories[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "univOfCategory") as! UnivOfCategory
        let id = categories[indexPath.item].id!
        let categoryImage = categories[indexPath.item].category_image_url
        let categoryTitle = categories[indexPath.item].title
        vc.mainImage = categoryImage
        vc.mainTitle = categoryTitle
        ServerManager.shared.getUnivOfCategory(id: id, completion: vc.getCourses, error: showError)
        show(vc, sender: self)
    }
    
}
