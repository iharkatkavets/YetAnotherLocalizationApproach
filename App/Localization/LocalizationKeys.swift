//
//  LocalizationKeys.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation

typealias L = LocalizableKeys

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

struct LocalizableKeys {
    struct Login {
        static let ButtonLoginTitle = "Login.Button.Login.Title".localized
        static let TextFieldUsernamePlaceholder = "Login.TextField.Username.Placeholder".localized
        static let TextFieldPasswordPlaceholder = "Login.TextField.Password.Placeholder".localized
    }
    struct Settings {
        static let WelcomeLabelFmt = "Settings.Label.Welcome.Fmt".localized
        static let ButtonLogoutTitle = "Settings.Button.Logout.Title".localized
    }
}

