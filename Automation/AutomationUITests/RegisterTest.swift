//
//  RegisterTest.swift
//  AutomationUITests
//
//  Created by Oliver G Martinez on 9/8/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import XCTest

class RegisterTests: UITest {
    
    func testValidRegistration() {
        LoginScreen(app: app)
            .tapRegisterButton()
            .type(username: TestData.ValidCredentials.username)
            .type(password: TestData.ValidCredentials.password)
            .tapRegisterButton()
            .then { listScreen in
                XCTAssertTrue(listScreen.list.waitForExistence(timeout: UITest.timeout))
            }
    }
    
    func testInvalidRegistration() {
        LoginScreen(app: app)
            .tapRegisterButton()
            .type(username: TestData.InvalidCredentials.username)
            .type(password: TestData.InvalidCredentials.password)
            .tapRegisterButton()
            .then { listScreen in
                XCTAssertFalse(listScreen.list.waitForExistence(timeout: UITest.timeout))
            }
    }
    
}
