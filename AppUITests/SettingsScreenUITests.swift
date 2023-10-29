//
//  SettingsScreenUITests.swift
//  AppUITests
//
//  Created by Ihar Katkavets on 29/10/2023.
//

import XCTest

final class SettingsScreenUITests: XCTestCase {
    var app: XCUIApplication!
    let username = "Ihar Katkavets"
    
    func testElemensWithPlLocalization() throws {
        app = launchWithPlLocalization()
        routeToSettings(username)
        let settingsViewController = app.otherElements["SettingsViewController"]
        XCTAssert(settingsViewController.waitForExistence(timeout: 1))
        
        let welcomeLabel = settingsViewController.staticTexts["WelcomeLabel"]
        XCTAssertEqual("Zalogowano się jako Ihar Katkavets. Powitanie!", welcomeLabel.label)
                
        let logoutButton = settingsViewController.buttons["LogOutButton"]
        XCTAssertEqual("Wyloguj", logoutButton.label)
    }
    
    func testElemensWithEnLocalization() throws {
        app = launchWithEnLocalization()
        routeToSettings(username)
        let settingsViewController = app.otherElements["SettingsViewController"]
        XCTAssert(settingsViewController.waitForExistence(timeout: 1))
        
        let welcomeLabel = settingsViewController.staticTexts["WelcomeLabel"]
        XCTAssertEqual("You are logged in as Ihar Katkavets. Welcome!", welcomeLabel.label)
                
        let logoutButton = settingsViewController.buttons["LogOutButton"]
        XCTAssertEqual("Logout", logoutButton.label)
    }
}

extension SettingsScreenUITests {
    func routeToSettings(_ username: String) {
        let loginViewController = app.otherElements["LoginViewController"]
        XCTAssert(loginViewController.waitForExistence(timeout: 1))
        
        let usernameTextField = loginViewController.textFields["UsernameTextField"]
        usernameTextField.tap()
        usernameTextField.typeText(username)
        
        let loginButton = loginViewController.buttons["Login"]
        loginButton.tap()
    }
}
