//
//  DataManager.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/8/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class DataManager {
    static let manager = DataManager()
    var categories: [Categories]?
    var subcategory: [Subcategories]?
    var courses: [Courses]?
}
