//
//  TestID.swift
//  Automation
//
//  Created by Alvin Yu on 6/24/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import Foundation

struct acsID {
    enum Login {
        static let login = "Login.login.button"
        static let username = "Login.username.textfield"
        static let password = "Login.password.textfield"
        static let register = "Login.register.button"
    }
    enum Register {
        static let register = "Register.register.button"
        static let username = "Register.username.textfield"
        static let password = "Register.password.textfield"
        static let status = "Register.status.label"
    }
    enum List {
        static let list = "List.list.tableView"
    }
    enum Detail {
        static let detail = "Detail.detail.button"
    }
    enum Review {
        static let confirm = "Review.confirm.button"
        static let cancel = "Review.cancel.button"
    }
    enum Confirmation {
        static let done = "Confirmation.done.button"
    }
}
