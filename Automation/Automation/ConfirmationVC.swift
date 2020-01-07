//
//  ConfirmationVC.swift
//  Automation
//
//  Created by Alvin Yu on 1/6/20.
//  Copyright © 2020 Alvin Yu. All rights reserved.
//

import UIKit

class ConfirmationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = nil
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
