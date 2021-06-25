//
//  BaseScreen.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 6/25/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import XCTest

protocol ScreenProtocol {
    var app: XCUIApplication { get }
    init(app: XCUIApplication)
}

class BaseScreen: ScreenProtocol {
    
    let app: XCUIApplication
    
    required init(app: XCUIApplication) {
        self.app = app
    }

}
