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
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        status.accessibilityIdentifier = "status"
    }

    @IBAction func handleLoginTap(_ sender: Any) {
        if username.text == "hello" && password.text == "world" {
            status.text = "Success"
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
                self?.transitionToMainUI()
            }
        } else {
            status.text = "Failed"
        }
    }
        
}

