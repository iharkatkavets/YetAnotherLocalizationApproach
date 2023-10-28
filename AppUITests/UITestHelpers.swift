//
//  UITestHelpers.swift
//  AppUITests
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import XCTest

extension XCTestCase {
    func launchWith(language: String) -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-AppleLanguages", "(\(language))"]
        app.launch()
        return app
    }
    
    func launchWithEnLocalization() -> XCUIApplication {
        return launchWith(language: "en")
    }
    
    func launchWithPlLocalization() -> XCUIApplication {
        return launchWith(language: "pl")
    }
}

extension XCUIApplication {
    
    func ensureLoginScreenIsVisible() {
        XCTAssert(otherElements["LoginViewController"].waitForExistence(timeout: 1))
    }
    
    func ensureUsernameTextFieldCorrect() {
        let textField = textFields["UsernameTextField"]
        XCTAssertTrue(textField.isEnabled)
        XCTAssertEqual("Username", textField.placeholderValue)
    }
    
    func pressLoginButton() {
        buttons["Login"].tap()
    }
    
    func ensureCurrentScreenIsServerList() {
        XCTAssert(otherElements["ServerListViewController"].waitForExistence(timeout: 1))
    }
}
