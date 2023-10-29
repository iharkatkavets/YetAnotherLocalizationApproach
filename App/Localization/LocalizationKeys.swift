//
//  LocalizationKeys.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation

@propertyWrapper struct Localized {
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.localized }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.localized
    }
}

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

typealias L = LocalizableKeys

struct LocalizableKeys {
    struct Login {
        @Localized static var ButtonLoginTitle = "Login.Button.Login.Title"
        @Localized static var TextFieldUsernamePlaceholder = "Login.TextField.Username.Placeholder"
        @Localized static var TextFieldPasswordPlaceholder = "Login.TextField.Password.Placeholder"
    }
    struct Settings {
        @Localized static var ButtonLogoutTitle = "Settings.Button.Logout.Title"
    }
}

