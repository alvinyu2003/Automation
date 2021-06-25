//
//  ListScreen.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 6/25/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import XCTest

class ListScreen: BaseScreen {
    
    var list: XCUIElement { app.tables[acsID.List.list] }
    
    @discardableResult
    func then(fn: (Self) -> Void) -> Self {
        fn(self)
        return self
    }
}
