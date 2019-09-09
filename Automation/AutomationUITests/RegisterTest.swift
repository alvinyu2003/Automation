//
//  RegisterTest.swift
//  AutomationUITests
//
//  Created by Oliver G Martinez on 9/8/19.
//  Copyright © 2019 Alvin Yu. All rights reserved.
//

import XCTest

class RegisterTest: XCTestCase {

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

    func testRegisterationWithBadPw() {
        
        let app = XCUIApplication()
        app.navigationBars["Automation.LoginVC"].buttons["Register"].tap()
        let username = app.textFields["username"]
        username.tap()
        username.typeText("username")
        let password = app.secureTextFields["password"]
        password.tap()
        password.typeText("badpw")
        let register = app.buttons["Register"]
        register.tap()
        let status = app.staticTexts["registerStatus"]
        XCTAssertEqual("Failed", status.label)
                // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}