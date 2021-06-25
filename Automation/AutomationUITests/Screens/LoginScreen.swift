//
//  LoginScreen.swift
//  AutomationUITests
//
//  Created by Alvin Yu on 6/25/21.
//  Copyright © 2021 Alvin Yu. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    
    var loginButton: XCUIElement { app.buttons[acsID.Login.login] }
    var registerButton: XCUIElement { app.buttons[acsID.Login.register] }
    var usernameTextField: XCUIElement { app.textFields[acsID.Login.username] }
    var passwordTextField: XCUIElement { app.secureTextFields[acsID.Login.password] }
    
    func tapLoginButton() -> ListScreen {
        loginButton.tap()
        return ListScreen(app: app)
    }
    
    func tapRegisterButton() -> RegisterScreen {
        registerButton.tap()
        return RegisterScreen(app: app)
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
