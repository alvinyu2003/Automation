//
//  ReviewVC.swift
//  Automation
//
//  Created by Alvin Yu on 6/24/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import UIKit

class ReviewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = nil
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }

}
