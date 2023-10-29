//
//  LoginScreenUITests.swift
//  AppUITests
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import XCTest

final class LoginScreenUITests: XCTestCase {
    var app: XCUIApplication!
    
    func testElemensWithPlLocalization() throws {
        app = launchWithPlLocalization()
        let loginViewController = app.otherElements["LoginViewController"]
        XCTAssert(loginViewController.waitForExistence(timeout: 1))
        
        let usernameTextField = loginViewController.textFields["UsernameTextField"]
        XCTAssertTrue(usernameTextField.isEnabled)
        XCTAssertEqual("Nazwa użytkownika", usernameTextField.placeholderValue)
        
        let passwordTextField = loginViewController.textFields["PasswordTextField"]
        XCTAssertTrue(passwordTextField.isEnabled)
        XCTAssertEqual("Hasło", passwordTextField.placeholderValue)
                
        let loginButton = loginViewController.buttons["Login"]
        XCTAssertTrue(loginButton.isEnabled)
        XCTAssertEqual("Zaloguj sie", loginButton.label)
    }
    
    func testElemensWithEnLocalization() throws {
        app = launchWithEnLocalization()
        let loginViewController = app.otherElements["LoginViewController"]
        XCTAssert(loginViewController.waitForExistence(timeout: 1))
        
        let textField = loginViewController.textFields["UsernameTextField"]
        XCTAssertTrue(textField.isEnabled)
        XCTAssertEqual("Username", textField.placeholderValue)
        
        let passwordTextField = loginViewController.textFields["PasswordTextField"]
        XCTAssertTrue(passwordTextField.isEnabled)
        XCTAssertEqual("Password", passwordTextField.placeholderValue)
                
        let loginButton = loginViewController.buttons["Login"]
        XCTAssertTrue(loginButton.isEnabled)
        XCTAssertEqual("Log in", loginButton.label)
    }
}
