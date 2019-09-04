//
//  LoginTests.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 9/3/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import XCTest

class LoginTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidLogin() {
        let app = XCUIApplication()
        let username = app.textFields["username"]
        username.tap()
        username.typeText("hello")
        let password = app.secureTextFields["password"]
        password.tap()
        password.typeText("world")
        let login = app.buttons["Login"]
        login.tap()
        let status = app.staticTexts["status"]
        XCTAssertEqual("Success", status.label)
    }
    
    func testThatInvalidLogin() {
        let app = XCUIApplication()
        let username = app.textFields["username"]
        username.tap()
        username.typeText("username")
        let password = app.secureTextFields["password"]
        password.tap()
        password.typeText("password")
        let login = app.buttons["Login"]
        login.tap()
        let status = app.staticTexts["status"]
        XCTAssertEqual("Failed", status.label)
    }
    
}
