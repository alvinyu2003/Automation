//
//  ViewController.swift
//  Automation
//
//  Created by Alvin Yu on 8/25/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, LoggedInRouter {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAccessibilityIDs()
    }

    private func setUpAccessibilityIDs() {
        username.accessibilityIdentifier = acsID.Login.username
        password.accessibilityIdentifier = acsID.Login.password
        loginButton.accessibilityIdentifier = acsID.Login.login
        registerButton.accessibilityIdentifier = acsID.Login.register
    }
    
    @IBAction func handleLoginTap(_ sender: Any) {
        if username.text == "abc" && password.text == "123" {
            // TODO: present error
        } else {
            // simulate network delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
                self?.transitionToMainUI()
            }
        }
    }
        
}

