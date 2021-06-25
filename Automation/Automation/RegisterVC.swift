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
        setUpAccessibilityIDs()
    }
    
    private func setUpAccessibilityIDs() {
        username.accessibilityIdentifier = acsID.Register.username
        password.accessibilityIdentifier = acsID.Register.password
        button.accessibilityIdentifier = acsID.Register.register
    }
    
    @IBAction func handleDoneTap(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func handleRegisterTap(_ sender: Any) {
        if username.text == "abc" && password.text == "123" {
            status.text = "Invalid"
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
                self?.transitionToMainUI()
            }
        }
    }
    
}
