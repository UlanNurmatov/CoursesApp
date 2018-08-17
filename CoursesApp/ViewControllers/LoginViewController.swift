//
//  LoginViewController.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/18/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import FacebookLogin

class LoginViewController: UIViewController {
    
    @IBOutlet weak var facebookLoginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = LoginButton(readPermissions: [ .publicProfile, .email, .userFriends ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
