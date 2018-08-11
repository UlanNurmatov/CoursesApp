//
//  File.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/9/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class DetailedCourse: Decodable {
    var id: Int?
    var title: String?
    var description: String?
    var main_image_url: String?
    var logo_image_url: String?
    var contacts: [Contact]?
    var branches: [Branch]?
    var services: [Contact]?
    var actions: [Actions]?
}

class Contact: Decodable {
    var type: String?
    var contact: String?
}

class Branch: Decodable {
    var address: String?
    var latitude: String?
    var longitude: String?
}

class Service: Decodable {
    var title: String?
    var description: String?
    var price: String?
}

class Actions: Decodable {
    var id: Int?
    var title: String?
    var description: String?
    var end_date: String?
    var action_image: String?
}




