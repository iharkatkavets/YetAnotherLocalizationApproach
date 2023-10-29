//
//  LocalizationKeys.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation
import AllLocalized
import Localized

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
        static var WelcomeLabelFmt = "Settings.Label.Welcome.Fmt"
    }
}

