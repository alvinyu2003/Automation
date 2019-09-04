//
//  ViewController.swift
//  Automation
//
//  Created by Alvin Yu on 8/25/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var status: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleLoginTap(_ sender: Any) {
        if username.text == "hello" && password.text == "world" {
            status.text = "Success"
        } else {
            status.text = "Failed"
        }
    }
    
}

