//
//  RegisterVC.swift
//  Automation
//
//  Created by Alvin Yu on 9/6/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController, LoggedInRouter {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        status.accessibilityIdentifier = "registerStatus"
        username.accessibilityIdentifier = "registerUsername"
        password.accessibilityIdentifier = "registerPassword"
        button.accessibilityIdentifier = "registerButton"
    }
    
    @IBAction func handleDoneTap(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func handleRegisterTap(_ sender: Any) {
        if username.text == "new" && password.text == "user" {
            status.text = "Success"
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
                self?.transitionToMainUI()
            }
        } else {
            status.text = "Failed"
        }
    }
    
}
