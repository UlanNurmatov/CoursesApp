//
//  Extensions.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

import UIKit

extension  UIViewController{
    
    func showSucsessAlert(withTitle title: String, andMessage
        message:String){
        let alert = UIAlertController(title: title, message: message,
                                      preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Close", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func showError(message:String){
        let alert = UIAlertController(title: "Ошибка", message: message,
                                      preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}
