//
//  ServerManager.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class ServerManager: HTTPRequestManager {
    static let shared = ServerManager()
    
   func getCategories(completion: @escaping ([Category]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.categories, completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode([Category].self, from: data)
                completion(result)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
}
    
    func getSubcategories(categoryId: Int, completion: @escaping ([Subcategories]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: "\(Constants.Network.EndPoint.categories)\(categoryId)/", completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode([Subcategories].self, from: data)
                completion(result)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    
    func getCourses(categoryId: Int, completion: @escaping ([Courses]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: "\(Constants.Network.EndPoint.courses)\(categoryId)/", completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode([Courses].self, from: data)
                completion(result)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    
    func getCourse(courseId: Int, completion: @escaping ([DetailedCourse]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: "\(Constants.Network.EndPoint.detailedCourse)\(courseId)/", completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode([DetailedCourse].self, from: data)
                completion(result)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }

}
