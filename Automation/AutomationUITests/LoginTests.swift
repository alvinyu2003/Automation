//
//  LoginTests.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 9/3/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import XCTest

class LoginTest: UITest {
    
    func testValidLogin() {
        LoginScreen(app: app)
            .type(username: TestData.ValidCredentials.username)
            .type(password: TestData.ValidCredentials.password)
            .tapLoginButton()
            .then { listScreen in
                XCTAssertTrue(listScreen.list.waitForExistence(timeout: UITest.timeout))
            }
    }
    
    func testInvalidLogin() {
        LoginScreen(app: app)
            .type(username: TestData.InvalidCredentials.username)
            .type(password: TestData.InvalidCredentials.password)
            .tapLoginButton()
            .then { listScreen in
                XCTAssertFalse(listScreen.list.waitForExistence(timeout: UITest.timeout))
            }
    }
}
