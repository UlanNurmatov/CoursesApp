//
//  Constants.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

struct Constants {
    
    struct Network{
        struct EndPoint {
            static let cities = "city/"
            static let categories = "api/categories/"
            static let charities = "charity_event/"
            static let forum = "forum/"
            static let announcements = "api/categories/"
            static let reviewPost = "review/"
            static let info = "info/"
        }
        
        struct ErrorMessage {
            static let NO_INTERNET_CONNECTION = "No internet connection"
            static let UNABLE_LOAD_DATA = "Unable load data"
            static let NO_HTTP_STATUS_CODE = "Unable to get response HTTP status code"
            static let UNAUTHORIZED = "Unauthorized error"
        }
    }
}
