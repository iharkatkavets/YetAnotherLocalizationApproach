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

final class SettingsPresenter {
    weak var view: SettingsViewInput?
    var logoutBlock: (()->Void)?
    let appState: AppState

    init(_ appState: AppState) {
        self.appState = appState
    }
}

extension SettingsPresenter: SettingsViewOutput {
    func userDidPressLogout() {
        appState.reset()
        logoutBlock?()
    }
}
