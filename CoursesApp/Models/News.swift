//
//  News.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/16/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class News: Decodable {
    var results: [NewsItem]?
}

class NewsItem: Decodable {
    var id: Int?
    var title: String?
    var description: String?
    var news_image: String?
    var added: String?
}
