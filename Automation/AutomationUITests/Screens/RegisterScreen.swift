//
//  RegisterScreen.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 6/25/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import XCTest

class RegisterScreen: BaseScreen {
    
    var registerButton: XCUIElement { app.buttons[acsID.Register.register] }
    var usernameTextField: XCUIElement { app.textFields[acsID.Register.username] }
    var passwordTextField: XCUIElement { app.secureTextFields[acsID.Register.password] }
    
    func tapRegisterButton() -> ListScreen {
        registerButton.tap()
        return ListScreen(app: app)
    }
    
    func type(username: String) -> Self {
        usernameTextField.tap()
        usernameTextField.typeText(username)
        return self
    }
    
    func type(password: String) -> Self {
        passwordTextField.tap()
        passwordTextField.typeText(password)
        return self
    }

}
