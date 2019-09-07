//
//  RegisterVC.swift
//  Automation
//
//  Created by Alvin Yu on 9/6/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        status.accessibilityIdentifier = "registerStatus"
    }
    
    @IBAction func handleDoneTap(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func handleRegisterTap(_ sender: Any) {
        if username.text == "new" && password.text == "user" {
            status.text = "Success"
        } else {
            status.text = "Failed"
        }
    }
    
}
