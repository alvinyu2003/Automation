//
//  LoggedInRouter.swift
//  Automation
//
//  Created by Alvin Yu on 1/6/20.
//  Copyright © 2020 Alvin Yu. All rights reserved.
//

import UIKit

protocol LoggedInRouter {
    func transitionToMainUI()
}

extension LoggedInRouter where Self: UIViewController {
    func transitionToMainUI() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ListVC")
        navigationController?.viewControllers = [vc]
    }
}
