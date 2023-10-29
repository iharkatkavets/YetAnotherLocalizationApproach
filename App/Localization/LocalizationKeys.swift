//
//  LocalizationKeys.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation
import AllLocalized

//@attached(memberAttribute)
//public macro AllLocalized() = #externalMacro(module: "AllLocalizedPlugin", type: "AllLocalizedMacro")

@propertyWrapper struct Localized {
    public var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.localized }
    }

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.localized
    }
}

public extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

typealias L = LocalizableKeys

struct LocalizableKeys {
    @AllLocalized
    struct Login {
        static var ButtonLoginTitle = "Login.Button.Login.Title"
        static var TextFieldUsernamePlaceholder = "Login.TextField.Username.Placeholder"
        static var TextFieldPasswordPlaceholder = "Login.TextField.Password.Placeholder"
    }
    @AllLocalized
    struct Settings {
        static var ButtonLogoutTitle = "Settings.Button.Logout.Title"
    }
}

