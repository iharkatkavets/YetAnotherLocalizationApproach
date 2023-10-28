//
//  SettingsPresenter.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation

protocol SettingsViewOutput: AnyObject {
    func userDidPressLogout()
}

class SettingsPresenter {
    weak var view: SettingsViewInput?
    var logoutBlock: (()->Void)?

    init() {
    }

}

extension SettingsPresenter: SettingsViewOutput {
    func userDidPressLogout() {
        logoutBlock?()
    }
}
