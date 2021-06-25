//
//  TestData.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 6/25/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import Foundation

struct TestData {
    struct ValidCredentials {
        static let username = "hello"
        static let password = "world"
    }
    struct InvalidCredentials {
        static let username = "abc"
        static let password = "123"
    }
}
