//
//  UITest.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 6/25/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import XCTest

class UITest: XCTestCase {
    
    private(set) var app: XCUIApplication!
    static let timeout: TimeInterval = 2.0
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = true
        launchApp()
    }

    override func tearDown() {
        app.terminate()
        super.tearDown()
    }
    
    fileprivate func launchApp() {
        app = XCUIApplication()
        app.launch()
    }
}
